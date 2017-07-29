#!/bin/bash

ContainerName=jupyter
Image=jupyter:init
Volume=/media/sf_e:/src
IP=127.0.0.1:8888:8888

case $1 in
    build)
        echo "build $Image"
        sudo docker build -t $Image ./
    ;;
    create)
        echo "create: ip[$IP] name[$ContainerName]"
        sudo docker run -d -p $IP -v $Volume --name $ContainerName $Image
    ;;
     start)
         echo "start $ContainerName"
         sudo docker start $ContainerName
     ;;
     stop)
         echo "stop $ContainerName"
         sudo docker stop $ContainerName
     ;;
     remove)
         echo "remove: name[$ContainerName]"
         sudo docker rm $ContainerName
     ;;
     *)
         echo "usage:build|create|start|stop|remove"
     ;;
 esac
