# Build image:
#   docker build --no-cache -t sandbox-gapi-img .
# run command in daemon mode:
#   docker run -d -p 3000:3000 --name gapi sandbox-gapi-img
# overwrite command so we can run shell in container
# (will replace running server with CMD, with ENTRYPOINT, it
# will ssh into running server)
#   docker run -it --rm -p 3000:3000 --name gapi sandbox-gapi-img /bin/sh
# apibuilder image is 868MB
# image running api is 6.35MB

FROM golang:latest AS apibuilder

#
ENV CGO_ENABLED=0

# Build server
RUN mkdir -p /sandbox/build
WORKDIR /sandbox/build
COPY ./server.go .
RUN go build -o gapi ./server.go

RUN mkdir -p /sandbox/dist
WORKDIR /sandbox/dist
RUN cp /sandbox/build/gapi .

EXPOSE 3000

FROM scratch
COPY --from=apibuilder /sandbox/build/gapi /
ENTRYPOINT ["/gapi"]
