FROM nvidia/cuda:9.1-cudnn7-devel-ubuntu16.04

# Get useful tools
RUN apt-get update && apt-get install -y wget git emacs

# Get darknet
RUN git clone https://github.com/pjreddie/darknet.git /darknet
WORKDIR /darknet

# Copy scripts
COPY cpu.sh ./ 
COPY gpu.sh ./ 

# Get test weights
RUN wget https://pjreddie.com/media/files/yolov3.weights
# Get Imagenet pretrained model weights
RUN wget https://pjreddie.com/media/files/darknet19_448.conv.23

# Set darknet parameters for GPU computing as default
RUN sed -i s/GPU=0/GPU=1/g Makefile
RUN sed -i s/CUDNN=0/CUDNN=1/g Makefile
RUN sed -i s/OPENMP=0/OPENMP=1/g Makefile
RUN make