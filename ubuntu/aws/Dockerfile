FROM ubuntu-dev

ENV AWS_ACCESS_KEY_ID=placeholder
ENV AWS_SECRET_ACCESS_KEY=placeholder

WORKDIR /home

RUN apt-get install -y unzip

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && aws/install

RUN mkdir -p ~/.aws && touch ~/.aws/credentials \
    && echo "[default]" > ~/.aws/credentials \
    && echo "aws_access_key_id=${AWS_ACCESS_KEY_ID}" >> ~/.aws/credentials \
    && echo "aws_secret_access_key=${AWS_SECRET_ACCESS_KEY}" >> ~/.aws/credentials
