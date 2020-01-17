FROM ubuntu:16.04

SHELL ["/bin/bash", "-c"]

RUN apt-get update ; apt-get install -y curl
RUN apt-get install -y pkg-config && apt-get install -y libssl-dev 
RUN apt-get install -y build-essential
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y -v --default-toolchain nightly-2019-07-10
RUN curl -L https://github.com/deltachat/deltachat-core-rust/archive/1.0.0-beta.22.tar.gz -O
RUN tar -xzf 1.0.0-beta.22.tar.gz
RUN cd deltachat-core-rust-1.0.0-beta.22 && source /root/.cargo/env && cargo build --release --all
RUN apt-get install locales
RUN locale-gen de_DE.UTF-8
RUN update-locale LANG=de_DE.UTF-8


RUN apt-get install -y nano
RUN apt-get install -y git
RUN apt-get install -y python
RUN apt-get install -y python3-pip
