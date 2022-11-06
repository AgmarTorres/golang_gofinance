
## Postgres
sudo service postgresql start
sudo service postgresql stop
sudo systemctl start postgresql.service

## Docker 

### Remove container
sudo docker rm -f postgres //remover container

### Download version of postgres
docker pull postgres:14-alpine

### List images of docker
docker images
docker ps

### Create user and password in docker image
sudo docker run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=postgres -d postgres:14-alpine

### Execute postgres user using psql
sudo docker exec -it postgres psql -U postgres

### Util Links
$ curl -L https://packagecloud.io/golang-migrate/migrate/gpgkey | apt-key add -
$ echo "deb https://packagecloud.io/golang-migrate/migrate/ubuntu/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/migrate.list
$ apt-get update
$ apt-get install -y migrate

## Migrate
migrate create -ext sql -dir db/migration -seq initial_tables


## Links do curso


Golang Migrate: [https://github.com/golang-migrate/migrate](https://github.com/golang-migrate/migrate)

Golang Migrate CMD para instalação: [https://github.com/golang-migrate/migrate/tree/master/cmd/migrate](https://github.com/golang-migrate/migrate/tree/master/cmd/migrate)

Código fonte do projeto no Github: [https://github.com/GustavoNoronha0/gofinance-backend](https://github.com/GustavoNoronha0/gofinance-backend)