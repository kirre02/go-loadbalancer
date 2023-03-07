#multi-stage buid so that: 
#     golang builder is not needed on hosy
#     golang builder remnants not required in Docker image

FROM  golang:1.19-alpine as builder
WORKDIR /build
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a -o loadbalancer .
#
#  Generate clean, final image
#
FROM alpine:3.16
RUN apk --no-cache add ca-certificates
WORKDIR /root
#copy golang binary into container
COPY --from=builder /build/loadbalancer . 
#executable
ENTRYPOINT ["/root/loadbalancer"]