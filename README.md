# docker-postgres-pgbouncer

This is a simple project to install, configure and monitor [PgBouncer](https://pgbouncer.github.io) connection pooler for [PostgreSQL](https://www.postgresql.org)

> This is a simple project using docker.

Install services

Download the [docker-compose](https://docs.docker.com/compose/) file:

```sh
wget https://raw.githubusercontent.com/guedim/docker-postgres-pgbouncer/master/docker-compose.yml
```

Later, start the services ([Postgres](https://www.postgresql.org/) - [PgBouncer](https://pgbouncer.github.io) - [PgAdmin](https://www.pgadmin.org)) using [docker-compose](https://docs.docker.com/compose/):
```sh
docker-compose up
```

Configuration

Access to [PgAdmin](https://www.pgadmin.org))  console, using http://192.168.99.100:5050

> Use the credentials:
> Username:pgbouncer_database
> Password:12345678

