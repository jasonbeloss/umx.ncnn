#!/usr/bin/env python

import io
import sys
import torch
import numpy as np
import openunmix
import struct
import argparse
from pathlib import Path


def quantize(array, qtype=np.uint8):
    # Calculate min and max of the array
    min_val = np.min(array)
    max_val = np.max(array)

    # Calculate scale and offset for quantization
    scale = (max_val - min_val) / (float)(np.iinfo(qtype).max - 1)
    offset = min_val

    # Quantize array
    quantized_array = np.round((array - offset) / scale).astype(qtype)

    # Return quantized array, scale and offset
    return quantized_array, scale, offset


def dequantize(quantized_array, scale, offset):
    # Dequantize array
    array = quantized_array * scale + offset

    # Return dequantized array
    return array


HUB_PATHS = {
    "umxhq": {
        "vocals": "vocals-b62c91ce.pth",
        "drums": "drums-9619578f.pth",
        "bass": "bass-8d85a5bd.pth",
        "other": "other-b52fbbf7.pth",
    },
    "umxl": {
        "vocals": "vocals-bccbd9aa.pth",
        "drums": "drums-69e0ebd4.pth",
        "bass": "bass-2ca1ce51.pth",
        "other": "other-c8c5b3e6.pth",
    },
}

LAYERS_TO_SKIP = [
    "stft.window",
    # "input_mean",
    # "input_scale",
    # "output_scale",
    # "output_mean",
    "sample_rate",
    "transform.0.window",
    # "bn1.running_mean",
    # "bn1.running_var",
    "bn1.num_batches_tracked",
    # "bn2.running_mean",
    # "bn2.running_var",
    "bn2.num_batches_tracked",
    # "bn3.running_mean",
    # "bn3.running_var",
    "bn3.num_batches_tracked",
]


def export_onnx(model, target_name, input_shape, output_path):
    """
    Export a single target model to ONNX format.
    """
    # Create a dummy input tensor
    dummy_input = torch.randn(input_shape)

    # Export to ONNX
    torch.onnx.export(
        model,
        dummy_input,
        output_path,
        input_names=["input"],
        output_names=["output"],
        # dynamic_axes={
        #     "input": {0: "batch_size", 1: "sequence_length"},
        #     "output": {0: "batch_size", 1: "sequence_length"},
        # },
        opset_version=13,
    )
    print(f"Exported {target_name} model to {output_path}")


if __name__ == '__main__':
    # add argparse to pick between umxhq and umxl models
    parser = argparse.ArgumentParser(description='Convert Open Unmix PyTorch models to ONNX')
    parser.add_argument('--model', type=str, choices=('umxhq', 'umxl'), help='umxhq, umxl (default)', default='umxl')
    parser.add_argument("dest_dir", type=str, help="destination path for the converted models")

    args = parser.parse_args()

    dir_out = Path(args.dest_dir)
    dir_out.mkdir(parents=True, exist_ok=True)

    # Load model from torchhub
    model = eval("openunmix." + args.model + "_spec")()
    print(model)

    # get torchub path
    torchhub_path = Path(torch.hub.get_dir()) / "checkpoints"

    # Define input shape for the model (batch_size, sequence_length, num_features)
    input_shape = (1, 2, 2049, 2)  # Adjust based on your model's input shape

    # Export each target model to ONNX
    for target_name in ["bass", "drums", "other", "vocals"]:
        # Load the target model
        target_model = model[target_name]
        print(f"Exporting target {target_name}")

        # Define output path for the ONNX model
        output_path = dir_out / f"{target_name}.onnx"
        output_path_pt = dir_out / f"{target_name}.pt"

        # Export to ONNX
        # export_onnx(target_model, target_name, input_shape, output_path)
        # 导出为 TorchScript
        dummy_input = torch.randn(1, 2, 2049, 4)
        traced_model = torch.jit.trace(target_model, dummy_input)
        traced_model.save(output_path_pt)


    print("Done. Models exported to:", dir_out)