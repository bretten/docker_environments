FROM ubuntu-dev
RUN \
    curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl & \
    chmod a+rx /usr/local/bin/youtube-dl & \
    apt-get install ffmpeg -y

# Always run the download command, but the URL can be overidden
#ENTRYPOINT ["/usr/bin/python3", "/usr/local/bin/youtube-dl", "-k"]
#CMD ["https://www.youtube.com/watch?v=fiH9edd25Bc"]

# Run the downlaod command unless CMD is overridden
CMD ["/usr/bin/python3", "/usr/local/bin/youtube-dl", "-k", "https://www.youtube.com/watch?v=fiH9edd25Bc"]
