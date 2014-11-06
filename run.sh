#!/bin/bash

echo "building image aip ..."
# building image
docker build -t aip .

echo "running container aip ..."
# running container with port forwarding
# from 3000 to 13370
docker run -it -p 13370:3000 -v `pwd`/resources:/src aip /bin/bash /src/start.sh

