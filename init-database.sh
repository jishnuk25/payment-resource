#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER Admin;
    CREATE DATABASE sample;
    GRANT ALL PRIVILEGES ON DATABASE sample TO Admin;
EOSQL