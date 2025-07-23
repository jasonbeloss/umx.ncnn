# umx.ncnn

This project is an ncnn/Eigen port of [Open-Unmix-PyTorch](https://github.com/sigsep/open-unmix-pytorch), with code inspired by [sevagh/umx.cpp](https://github.com/sevagh/umx.cpp).

## Features

- Based on the [ncnn](https://github.com/Tencent/ncnn) inference framework, supporting CPU and Vulkan GPU inference
- Efficient matrix operations using [Eigen](https://eigen.tuxfamily.org/)
- Supports Open-Unmix LSTM models
- Cross-platform (Linux/macOS/Android)

## Dependencies

- C++17
- [ncnn](https://github.com/Tencent/ncnn)
- [Eigen3](https://gitlab.com/libeigen/eigen.git)
- [libnyquist](https://github.com/ddiakopoulos/libnyquist.git) (for audio I/O)




## Patching ncnn

Before building, you need to apply the patches in `vendor/patches` to the ncnn source code:

```sh
cd vendor/ncnn
git apply ../../patches/*.patch
```

## Build

```sh
git submodule update --init --recursive
mkdir build && cd build
cmake