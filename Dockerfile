FROM ghcr.io/alastairhm/alpine-python3:latest

RUN pip3 install yamllint

WORKDIR /workdir
ENTRYPOINT ["yamllint"]
