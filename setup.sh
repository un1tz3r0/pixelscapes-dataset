#!/bin/bash

set -e
set -v

git pull --recurse-submodules
cd Real-ESRGAN/
pip3 install -r requirements.txt
python3 setup.py develop --user
wget https://github.com/xinntao/Real-ESRGAN/releases/download/v0.1.0/RealESRGAN_x4plus.pth -P experiments/pretrained_models
cd ..
