Development environment for darknet YOLO

Requirements for host machine:  
    1. NVidia drivers >=390.25  
    2. NVidia-docker  
  
Scripts:  
    cpu.sh : Enable CPU computing  
    gpu.sh : Enable GPU computing (see requirements above)  
  
Run container using CPU:  
    1. docker run -it -d --name container_name image_name  
    2. docker exec -it container_name /bin/sh  
    3. sh cpu.sh  
  
Run container using GPU:  
    1. nvidia-docker run -it -d --name container_name image_name  
    2. docker exec -it container_name /bin/sh  

Test detection by running: 
    ./darknet detect cfg/yolov3.cfg yolov3.weights data/dog.jpg
