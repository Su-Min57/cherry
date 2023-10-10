FROM golang:1.13-alpine AS builder

RUN apk update && apk add git

WORKDIR /usr/src/app
COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o main .

FROM scratch

COPY --from=builder /usr/src/app .
CMD ["/main"]