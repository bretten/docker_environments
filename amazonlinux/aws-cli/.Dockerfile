FROM public.ecr.aws/amazonlinux/amazonlinux:2 as installer
#ARG EXE_FILENAME=awscli-exe-linux-x86_64.zip
#COPY $EXE_FILENAME .
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && yum update -y \
  && yum install -y unzip \
  && unzip awscliv2.zip \
  # The --bin-dir is specified so that we can copy the
  # entire bin directory from the installer stage into
  # into /usr/local/bin of the final stage without
  # accidentally copying over any other executables that
  # may be present in /usr/local/bin of the installer stage.
  && ./aws/install --bin-dir /aws-cli-bin/

FROM public.ecr.aws/amazonlinux/amazonlinux:2
RUN yum update -y \
  && yum install -y less groff \
  && yum clean all
COPY --from=installer /usr/local/aws-cli/ /usr/local/aws-cli/
COPY --from=installer /aws-cli-bin/ /usr/local/bin/
WORKDIR /aws
#ENTRYPOINT ["/usr/local/bin/aws"]

# docker run -d -t -v C:\Users\[user]\.aws:/root/.aws -v D:\:/root/mounted --name aws-cli aws-cli-detached