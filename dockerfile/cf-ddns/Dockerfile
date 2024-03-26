FROM alpine:3.19 as build
RUN apk --no-cache add go git
RUN git clone https://github.com/ety001/cf-ddns.git && \
    cd cf-ddns && \
    go build -o /usr/bin/cf-ddns


FROM alpine:3.19 as final
COPY --from=build /usr/bin/cf-ddns /usr/bin/cf-ddns
COPY ./run.sh /usr/bin/run.sh
RUN apk --no-cache add curl && \
    chmod +x /usr/bin/cf-ddns && \
    chmod +x /usr/bin/run.sh
CMD ["/usr/bin/run.sh"]
