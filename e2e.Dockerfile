ARG IMG_TAG=latest

# Compile the ag0 binary
FROM golang:1.17-alpine AS ag0-builder
WORKDIR /src/app/
COPY go.mod go.sum* ./
RUN go mod download
COPY . .
ENV PACKAGES curl make git libc-dev bash gcc linux-headers eudev-dev python3
RUN apk add --no-cache $PACKAGES
RUN CGO_ENABLED=0 make install

# Add to a distroless container
FROM gcr.io/distroless/cc:$IMG_TAG
ARG IMG_TAG
COPY --from=ag0-builder /go/bin/ag0 /usr/local/bin/
EXPOSE 26656 26657 1317 9090

ENTRYPOINT ["ag0", "start"]
