# Run Cronjob on container. 
###Step1: Build Dockerfile.   
$ docker build -t docker-test-image
  
###Step2: check the images.   
$ docker images
  
###Step3: run image on docker.   
$ docker run -it [image ID]
  
###Step4: get container id.   
$ docker ps -a

###Step4: check container logs.   
$ docker logs [container id] 
