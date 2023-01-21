FROM ubuntu-dev

RUN apt-get update -y && \
    apt-get install imagemagick --fix-missing -y

WORKDIR /images

ENTRYPOINT ["mogrify"]

# Convert all tga folders in workdir with quality 100
# docker run -v "C:\path\on\host":"/images" ubuntu-imagemagick -format jpg -quality 100 *.tga

# Change entrypoint
# docker run --entrypoint=identify -v "C:\path\on\host":"/images" ubuntu-imagemagick *.tga