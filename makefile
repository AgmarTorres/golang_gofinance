dockerDB:
	sudo docker exec -it postgres createdb --username=postgres --owner=postgres go_finance

createdb:
	createdb --username=postgres --owner=postgres go_finance

postgres:
	sudo docker run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=postgres -d postgres:14-alpine

init_migrate:
	migrate create -ext sql -dir db/migration -seq initial_tables

migrateUp:
	migrate -path db/migration -database "postgresql://postgres:postgres@localhost:5432/go_finance?sslmode=disable" -verbose up

migrateDown:
	migrate -path db/migration -database "postgresql://postgres:postgres@localhost:5432/go_finance?sslmode=disable" -verbose drop

.PHONY: createdb postgres