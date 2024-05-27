FROM alpine:latest as builder
WORKDIR /app
RUN apk --no-cache add git go && git clone https://github.com/fatedier/frp.git
RUN cd /app/frp && \
    LDFLAGS="-s -w" && \
    env CGO_ENABLED=0 go build -trimpath -ldflags "${LDFLAGS}" -tags frps -o bin/frps ./cmd/frps && \
    env CGO_ENABLED=0 go build -trimpath -ldflags "${LDFLAGS}" -tags frps -o bin/frps ./cmd/frps

FROM alpine:latest as final
RUN mkdir -p /usr/local/bin
COPY --from=builder /app/frp/bin/frps /usr/local/bin/frps
COPY --from=builder /app/frp/bin/frpc /usr/local/bin/frpc
RUN chmod +x /usr/local/bin/frps /usr/local/bin/frpc
