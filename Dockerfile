# Build image:
#   docker build -t sandbox-gapi-img .
# run command in daemon mode:
#   docker run --rm -d -p 3000:3000 --name sapi1 sandbox-api1-img
# overwrite command so we can run shell in container
# (will replace running server with CMD, with ENTRYPOINT, it
# will ssh into running server)
#   docker run -it --rm -p 3000:3000 --name gapi sandbox-gapi-img /bin/sh
# apibuilder image is 868MB
# image running api is 6.35MB

FROM golang:latest AS apibuilder

# Build server
RUN mkdir -p /sandbox/build
WORKDIR /sandbox/build
COPY ./server.go .
RUN go build -o sapp1 ./server.go

RUN mkdir -p /sandbox/dist
WORKDIR /sandbox/dist
RUN cp /sandbox/build/sapp1 .

EXPOSE 3000

FROM scratch
COPY --from=apibuilder /sandbox/build/sapp1 /
ENTRYPOINT ["/sapp1"]
