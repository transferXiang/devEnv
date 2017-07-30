#!/bin/bash

Image=python3:latest
Container=python3
Volume=/media/sf_e

case $1 in
    build)
        echo "build $Image"
        sudo docker build -t $Image ./
    ;;
    create)
        echo "create: name[$Container]"
        sudo docker run -it -v $Volume:/src --name $Container $Image
    ;;
     start)
         echo "start $Container"
         sudo docker start $Container
     ;;
     stop)
         echo "stop $Container"
         sudo docker stop $Container
     ;;
     remove)
         echo "remove: name[$Container]"
         sudo docker rm $Container
     ;;
     *)
         echo "usage:build|create|start|stop|remove"
     ;;
 esac
