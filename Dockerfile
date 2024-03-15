FROM ghcr.io/alastairhm/alpine-python3:latest

RUN adduser -D -s /bin/sh yamllint
USER yamllint
WORKDIR /home/yamllint
RUN python3 -m venv /home/yamllint && . /home/yamllint/bin/activate && pip3 install yamllint
WORKDIR /workdir

ENTRYPOINT ["/home/yamllint/bin/yamllint"]
