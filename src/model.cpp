
#include <string>
#include <vector>
#include <unistd.h>
#include <Eigen/Dense>
#include "model.hpp"
#include "layer/memorydata.h"

void umxcpp::load_model_pre_weight(struct umx_model *model)
{
    for (int target = 0; target < 4; ++target) {
        model->input_mean[target] = Eigen::MatrixXf(2 * 1487, 1).setZero();
        model->input_scale[target] = Eigen::MatrixXf(2 * 1487, 1).setZero();
        const std::vector<ncnn::Layer*>& layers = model->nets[target].get()->layers();
        for (const auto* layer : layers) {
            if (layer->name == "input_scale") {
                const ncnn::MemoryData* mem_scale = (const ncnn::MemoryData*)layer;
                if (mem_scale) {
                    const ncnn::Mat scale_data = mem_scale->data;
                    const float* ptr = (const float*)scale_data.data;
    
                    Eigen::Map<const Eigen::Matrix<float, Eigen::Dynamic, 1>> scale_tmp(ptr, scale_data.w);
                    model->input_scale[target].block(0, 0, 1487, 1) = scale_tmp;
                    model->input_scale[target].block(1487, 0, 1487, 1) = scale_tmp;
                    model->input_scale[target].transposeInPlace();
                }
            }
            if (layer->name == "input_mean") {
                const ncnn::MemoryData* mem_mean = (const ncnn::MemoryData*)layer;
                if (mem_mean) {
                    const ncnn::Mat mean_data = mem_mean->data;
                    const float* ptr = (const float*)mean_data.data;
    
                    Eigen::Map<const Eigen::Matrix<float, Eigen::Dynamic, 1>> mean_tmp(ptr, mean_data.w);
                    model->input_mean[target].block(0, 0, 1487, 1) = mean_tmp;
                    model->input_mean[target].block(1487, 0, 1487, 1) = mean_tmp;
                    model->input_mean[target].transposeInPlace();
                }
            }
        }
    }
}

bool umxcpp::load_umx_model(struct umx_model *model)
{
//  "bass", "drums", "other", "vocals"
    model->nets.resize(4);
    std::vector<std::string> param_paths = {
        "./model/bass.opt.param",
        "./model/drums.opt.param",
        "./model/other.opt.param",
        "./model/vocals.opt.param"
    };

    std::vector<std::string> bin_paths = {
        "./model/bass.opt.bin",
        "./model/drums.opt.bin",
        "./model/other.opt.bin",
        "./model/vocals.opt.bin"
    };

    int ret = 0;
    for (int i = 0; i < 4; ++i) {
        model->nets[i] = std::make_unique<ncnn::Net>();
        model->nets[i].get()->opt.use_vulkan_compute = true;
        ret = model->nets[i].get()->load_param(param_paths[i].c_str());
        printf("Load %s success ret(%d) \n", param_paths[i].c_str(), ret);
        if (ret != 0) {
            return false;
        }
        ret = model->nets[i].get()->load_model(bin_paths[i].c_str());
        if (ret != 0) {
            return false;
        }
        printf("Load %s success ret(%d) \n", bin_paths[i].c_str(), ret);
    }

    load_model_pre_weight(model);
    return true;
}


