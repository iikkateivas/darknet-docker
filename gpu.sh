sed -i s/GPU=0/GPU=1/g /darknet/Makefile
sed -i s/CUDNN=0/CUDNN=1/g /darknet/Makefile
sed -i s/OPENMP=0/OPENMP=1/g /darknet/Makefile
make