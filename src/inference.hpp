#ifndef INFERENCE_HPP
#define INFERENCE_HPP

#include "dsp.hpp"
#include "model.hpp"
#include <Eigen/Core>
#include <Eigen/Dense>

namespace umxcpp
{

const float SEGMENT_LEN_SECS = 0.1f;
// const float MAX_SHIFT_SECS = 0.5;   // max shift
const float OVERLAP = 0.2;         // overlap between segments
const float TRANSITION_POWER = 1.0; // transition between segments

std::vector<Eigen::MatrixXf>
umx_inference(struct umx_model &model, const Eigen::MatrixXf audio,
              struct umxcpp::stft_buffers reusable_stft_buf);

}; // namespace umxcpp

#endif // INFERENCE_HPP
