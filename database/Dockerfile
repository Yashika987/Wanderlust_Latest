FROM mongo:latest

WORKDIR /data/db

COPY . .

ENTRYPOINT ["mongod", "--bind_ip_all"]
