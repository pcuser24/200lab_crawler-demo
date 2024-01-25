# build stage
FROM golang:1.21.6-alpine3.19 AS build
WORKDIR /app
COPY . .
RUN go build -o crawler .
WORKDIR /migrate
ADD ../migrate .
RUN go build -o migrate . && ./migrate

# operational stage
FROM alpine:3.19
WORKDIR /app
COPY --from=build /app/crawler .
CMD ["/app/crawler"]
