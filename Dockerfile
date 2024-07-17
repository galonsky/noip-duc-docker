FROM docker.io/rust:1.79

WORKDIR /usr/src/noip
RUN wget https://dmej8g5cpdyqd.cloudfront.net/downloads/noip-duc_3.1.0.tar.gz
RUN tar xf noip-duc_3.1.0.tar.gz
WORKDIR /usr/src/noip/noip-duc_3.1.0
RUN cargo build --release

CMD ["target/release/noip-duc", "--once"]


