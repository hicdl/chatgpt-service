FROM alpine:3.15.3

LABEL maintainer="hicdl"
LABEL email="hicdl@163.com"
LABEL version="v1.0.3"

RUN adduser -h /chatgpt-service -u 1000 -D dory
COPY chatgpt-service /chatgpt-service/
WORKDIR /chatgpt-service
USER dory

# docker build -t doryengine/chatgpt-service:v1.0.3-alpine .
