FROM quay.io/kyberorg/golang:1.17.2 as sourceBuilder
WORKDIR /go/src/app

COPY cmd/main.go cmd/main.go

RUN GO111MODULE=off CGO_ENABLED=0 go install ./...

FROM scratch
COPY --from=sourceBuilder /go/bin/cmd /gotd
ENTRYPOINT ["/gotd"]
