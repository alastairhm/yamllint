FROM alastairhm/alpine-python3

RUN pip3 install yamllint

WORKDIR /workdir
ENTRYPOINT ["yamllint"]
