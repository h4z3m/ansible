FROM ubuntu:focal

WORKDIR /app

RUN apt-get update && apt-get install -y software-properties-common

RUN apt-add-repository ppa:neovim-ppa/unstable
RUN apt-add-repository ppa:git-core/ppa
RUN apt-add-repository ppa:ansible/ansible
RUN apt update

RUN apt-get install -y git curl neovim ansible vim

COPY . .

VOLUME ["/app"]

CMD ["bash"]
