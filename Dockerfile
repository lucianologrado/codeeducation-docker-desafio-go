# estagio de build para instalar tudo com lixo
FROM golang as builder

WORKDIR /go/hello

COPY ./src .

RUN mkdir bin && \
    go mod init "lucianologrado/hello" && \
    go build -o ./bin .

FROM hello-world
WORKDIR /go
COPY --from=builder /go/hello/bin .
ENTRYPOINT [ "./hello" ]
CMD ["Code.education Rocks!"]
