node-dev image is assumed to be the base image

# React - Local Dev

## Windows
docker run -itd -v "${PWD}:/usr/src/app" -p 30000:3000 -e CHOKIDAR_USEPOLLING=true --name=node-dev-react node-dev