
## Postgres
sudo service postgresql start
sudo service postgresql stop
sudo systemctl start postgresql.service

## Docker 
docker images
docker ps
docker ps -a
sudo docker stop 733583e9e3ae -f
sudo docker container  ls --all //Lista todos containers abertos
sudo docker exec -it postgres psql -U postgres
sudo docker exec -it postgres /bin/sh

  ### Create database
   createdb --username=postgres --owner=postgres go_finance

  ### Dropdb go_finance
  dropdb --username=postgres go_finance

### Migrate
migrate create -ext sql -dir db/migration -seq initial_tables

migrate -path db/migration -database "postgresql://postgres:postgres@localhost:5432/go_finance?sslmode=disable" -verbose up

## Outros comandos
sudo docker exec -it postgres createdb --username=postgres --owner=postgres go_finance
sudo docker exec -it postgres dropdb --username=postgres  go_finance1

### Remove container
sudo docker rm -f postgres //remover container

### Download version of postgres
docker pull postgres:14-alpine

### Create user and password in docker image
sudo docker run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=postgres -d postgres:14-alpine

### MakeFile
make migrateUp
make migrateDown

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


- Aula 03
# SQLC
Install: sudo snap install sqlc
version: sqlc version
Após criar queryis dentro de sqlc e o sqlc.yaml
Rodar comandos padrões
docker run --rm -v $(pwd):/src -w /src kjconroy/sqlc generate
https://docs.sqlc.dev/en/stable/overview/install.html

# Initialize go
go mod init tiny


# para gerar os arquivos da pastas sqlc
ele pega os dados do sqlc.yaml e executa
  sudo docker run --rm -v $(pwd):/src -w /src kjconroy/sqlc generate