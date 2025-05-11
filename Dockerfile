FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive

LABEL maintainer="Amir Pourmand"

# 安装系统依赖 + Node.js（用于 Uglifier）
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    curl \
    gnupg && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y --no-install-recommends \
    locales \
    imagemagick \
    ruby-full \
    build-essential \
    zlib1g-dev \
    jupyter-nbconvert \
    inotify-tools \
    procps \
    nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

# 设置本地语言
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8 \
    JEKYLL_ENV=production

# 安装 Jekyll
RUN gem install jekyll bundler

# 创建工作目录并安装依赖
RUN mkdir /srv/jekyll
ADD Gemfile /srv/jekyll
WORKDIR /srv/jekyll
RUN bundle install --no-cache

# 公开端口
EXPOSE 8080

# 启动脚本
COPY bin/entry_point.sh /tmp/entry_point.sh
CMD ["/tmp/entry_point.sh"]
