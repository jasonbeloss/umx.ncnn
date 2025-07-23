#include "inference.hpp"
#include "dsp.hpp"
#include "model.hpp"
#include <algorithm>
#include <array>
#include <cstdlib>
#include <iostream>
#include <vector>

std::vector<Eigen::MatrixXf> umxcpp::umx_inference(
    struct umxcpp::umx_model &model, const Eigen::MatrixXf audio,
    struct umxcpp::stft_buffers reusable_stft_buf)
{

    int ret = 0;
    reusable_stft_buf.waveform = audio;

    // in-place stft
    stft(reusable_stft_buf);

    Eigen::Tensor3dXcf spectrogram = reusable_stft_buf.spec;

    Eigen::Tensor3dXf mix_mag = spectrogram.abs();
    std::vector<Eigen::Tensor3dXf> target_mix_mags;
    std::vector<Eigen::MatrixXf> return_waveforms;

    int nb_frames = mix_mag.dimension(1);
    int nb_bins_stacked_cropped = 2974;
    // int nb_bins_stacked_cropped = 4098;

    // 2974 is related to bandwidth=16000 Hz in open-unmix
    // wherein frequency bins above 16000 Hz, corresponding to
    // 2974/2 = 1487 bins, are discarded
    //
    // left = 2049 fft bins, cropped to 16000 Hz or :1487
    // right = 2049 fft bins, cropped to :1487
    // stack on top of each other for 2974 total input features
    //
    // this will be fed into the first linear encoder into hidden size
    Eigen::MatrixXf x(nb_frames, nb_bins_stacked_cropped); //2, 2974
    Eigen::MatrixXf x_target(nb_frames, 4098);

    printf("mix_mag [%d, %d, %d]\n", mix_mag.dimension(0), mix_mag.dimension(1), mix_mag.dimension(2));

    int nb_bins_cropped = nb_bins_stacked_cropped / 2;  // 1487

    // std::cout << "populate eigen matrixxf" << std::endl;
    for (int i = 0; i < nb_frames; i++)
    {
        for (int j = 0; j < nb_bins_cropped; j++)
        {
            // interleave fft frames from each channel
            // fill first half of 2974/2 bins from left
            x(i, j) = mix_mag(0, i, j);
            // fill second half of 2974/2 bins from right
            x(i, j + nb_bins_cropped) = mix_mag(1, i, j);
        }
    }
    for (int target = 0; target < 4; ++target)
    {

        // get the sub sequence
        Eigen::MatrixXf x_input = x;

        // apply formula x = x*input_scale + input_mean
        for (int i = 0; i < x_input.rows(); i++)
        {
            x_input.row(i) =
                (x_input.row(i).array()  +
                model.input_mean[target].array()) * model.input_scale[target].array();
        }

        ncnn::Mat input;
        int input_h = mix_mag.dimension(1);
        input.create(2974, input_h);

        float* ptr = input.channel(0);
        for (int y = 0; y < input_h; ++y)
        {
            for (int x = 0; x < 2974; ++x)
            {
                ptr[y * 2974 + x] = x_input(y, x);
            }
        }

        ncnn::Mat output;
        ncnn::Extractor extractor = model.nets[target].get()->create_extractor();
        ret = extractor.input("13", input);
        if (ret != 0) {
            printf("Extractor Input ERROR(%d) \n", ret);
        }
        ret = extractor.extract("32", output);
        if (ret != 0) {
            printf("Extractor Output ERROR(%d) \n", ret);
        }

        int rows = output.h;
        int bins = output.w;
        int channels = output.c;        
        Eigen::MatrixXf x_out(rows, bins * channels);  // 2 × 4098
        for (int h = 0; h < rows; ++h) {
            for (int w = 0; w < bins; ++w) {
                for (int c = 0; c < channels; ++c) {
                    float val = output.channel(c).row(h)[w];
                    x_out(h, w + c * bins) = val;
                }
            }
        }

        Eigen::Tensor3dXf mix_mag_copy = mix_mag;
        for (int c = 0; c < mix_mag.dimension(1); c++)
        {
            for (int d = 0; d < mix_mag.dimension(2); d++)
            {
                mix_mag_copy(0, c, d) = x_out(c, d) * mix_mag(0, c, d);
                mix_mag_copy(1, c, d) =
                x_out(c, d + mix_mag.dimension(2)) * mix_mag(1, c, d);
            }
        }

        Eigen::Tensor3dXf mix_phase = spectrogram.unaryExpr(
            [](const std::complex<float> &c) { return std::arg(c); });
        Eigen::Tensor3dXcf t_mag = umxcpp::polar_to_complex(mix_mag_copy,
                                             mix_phase);
        reusable_stft_buf.spec = t_mag;
        istft(reusable_stft_buf);
        return_waveforms.push_back(reusable_stft_buf.waveform);
    }

    return return_waveforms;
}
