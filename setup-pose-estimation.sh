#!/bin/bash
sudo apt-get update

# Install library
#pip3 install --upgrade cython
#sudo apt-get -y install libopenblas-dev
#sudo apt-get -y install liblapacke-dev
#sudo apt-get -y install gfortran
#sudo apt-get -y install llvm-7*
#echo 'export PATH="/usr/lib/llvm-7/bin:$PATH"' >> ~/.bashrc
#source ~/.bashrc
sudo apt-get -y install python3-scipy
#sudo apt-get -y install python3-matplotlib

pip3 install tqdm
pip3 install slidingwindow
pip3 install pycocotools

# Setup tf-pose-estimation
cd && git clone --depth 1 https://github.com/ildoonet/tf-pose-estimation.git
cd ~/tf-pose-estimation
git remote add karaage0703 https://github.com/karaage0703/tf-pose-estimation
git fetch karaage0703
git checkout -b raspi_buster karaage0703/raspi_buster
cd ~/tf-pose-estimation/tf_pose/pafprocess
sudo apt-get -y install swig
swig -python -c++ pafprocess.i && python3 setup.py build_ext --inplace
cd ~/tf-pose-estimation/
./download_100_224_pinto_model_zoo.sh

#sudo pip3 install scipy==1.1.0

# Reference site
# https://toramamma.blogspot.com/2019/04/jetson-nano-tensorflowopenpose.html
