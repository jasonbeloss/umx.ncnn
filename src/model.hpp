#ifndef MODEL_HPP
#define MODEL_HPP

#include <array>
#include <string>
#include <vector>
#include <memory>
#include <Eigen/Dense>
#include "net.h"

namespace umxcpp
{

//   "bass", "drums", "other", "vocals"
struct umx_model
{
    std::vector<std::unique_ptr<ncnn::Net>> nets;
    Eigen::MatrixXf input_mean[4];
    Eigen::MatrixXf input_scale[4];
};

void load_model_pre_weight(struct umx_model *model);
bool load_umx_model(struct umx_model *model);
} // namespace umxcpp

#endif // MODEL_HPP