# Build image:
#   docker build -t sandbox-api1-img .
# run command:
#   docker run -p 3000:3000 --name sapi1 sandbox-api1-img --rm

FROM golang:latest AS apibuild

RUN mkdir /sandbox
WORKDIR /sandbox
COPY . .
RUN go build -o sapp1 .

CMD ["/sandbox/sapp1"]
