#!/bin/bash

Image=$1
Container=$2
Volume=$3

case $4 in
    pull)
        echo "pull $Image"
        sudo docker pull $Image
    ;;
    create)
        echo "create: name[$Container]"
        sudo docker run -d -P -v $Volume --name $Container $Image
        sudo docker ps | grep $Container
    ;;
     start)
         echo "start $Container"
         sudo docker start $Container
         sudo docker ps | grep $Container
     ;;
     stop)
         echo "stop $Container"
         sudo docker stop $Container
     ;;
     remove)
         echo "remove: $Container"
         sudo docker rm -f $Container
     ;;
     *)
         echo "usage:pull|create|start|stop|remove"
     ;;
 esac
