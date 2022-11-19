package db

import "database/sql"

type Store interface {
	Querier
}

type SQLStore struct {
	db *sql.DB
	*Queries
}

func NewStore(db *sql.DB) Store {
	return &SQLStore{
		db:      db,      // conexão com o BD
		Queries: New(db), // vamos passar o banco de dados para db.go
	}
}
