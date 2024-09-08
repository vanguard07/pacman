FROM python:2.7.17-slim

USER root
# RUN apk update && apk add bash tk
RUN apt-get update && apt-get install -y bash tk

# Set the working directory to /app
WORKDIR /app