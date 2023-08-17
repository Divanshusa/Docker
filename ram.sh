#! /bin/bash
docker build -t web .
docker run -dit -p 8081:80 --name web1 web 

