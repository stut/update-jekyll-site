FROM debian:stretch-slim
RUN apt-get -y update \
    && apt-get install -y build-essential ruby ruby-dev git awscli \
    && rm -rf /var/lib/apt/lists/*
RUN gem install jekyll redcarpet
WORKDIR /root
COPY entrypoint.sh /root/entrypoint.sh
RUN chmod +x /root/entrypoint.sh
