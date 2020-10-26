FROM ubuntu:20.04
WORKDIR /home/
ENV PATH "$PATH:/usr/local/go/bin:/root/go/bin:/root/.cargo/bin:/root/.local/bin"
COPY scripts/00-cache.sh scripts/02-rustlang.sh scripts/
RUN bash scripts/00-cache.sh
COPY scripts/ scripts/
RUN bash scripts/00-setup.sh
CMD ["zsh"]

