FROM golang:1.15.8-alpine3.13 AS builder
WORKDIR /builder
COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o 2fa-app 


FROM alpine:3.13.1
WORKDIR /root/
COPY --from=builder /builder/2fa-app .
CMD ["./2fa-app"]