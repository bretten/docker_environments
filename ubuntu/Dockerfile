FROM ubuntu:20.04
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y curl && \
  apt-get install -y vim && \
  apt-get install -y git && \
  apt-get install -y software-properties-common && \
  apt-get install -y gnupg2 && \
  # Terraform
  curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - && \
  apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
  apt-get update && apt-get install terraform

# Set environment variables
ENV TEST_ENV_VAR test_val

# Command
CMD ["bash"]