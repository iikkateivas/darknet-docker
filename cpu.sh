sed -i s/GPU=1/GPU=0/g /darknet/Makefile
sed -i s/CUDNN=1/CUDNN=0/g /darknet/Makefile
sed -i s/OPENMP=1/OPENMP=0/g /darknet/Makefile
make