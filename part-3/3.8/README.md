# Docker in Docker build + publish

First build the image.

Then run it:

`docker run -it -v /var/run/docker.sock:/var/run/docker.sock builder https://github.com/some-repo myuser/tag-name`

This will prompt you for your Docker Hub credentials and builds the Dockerfile in the repository and publishes it to Docker Hub.