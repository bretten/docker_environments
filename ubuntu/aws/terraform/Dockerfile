﻿FROM ubuntu-aws-dev
RUN \
  # Terraform
  curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - && \
  apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
  apt-get update && apt-get install terraform

COPY main.tf /home/main.tf

CMD terraform init && terraform apply -auto-approve
