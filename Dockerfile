FROM gcc:latest

COPY . /usr/src/cpp

WORKDIR /usr/src/cpp

CMD ["./build.sh", "file"]