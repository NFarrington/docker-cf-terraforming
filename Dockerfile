FROM golang:1.12-stretch

RUN go get -v -u github.com/cloudflare/cf-terraforming/...

COPY entrypoint.sh .
ENTRYPOINT ["./entrypoint.sh"]
CMD ["--help"]
