# docker-postgres-pgbouncer

This is a simple project to install, configure and monitor [PgBouncer](https://pgbouncer.github.io) connection pooler for [PostgreSQL](https://www.postgresql.org)

> This is a simple project using docker.

### Install services<a name="install"></a>

Download the [docker-compose](https://docs.docker.com/compose/) file:

```sh
wget https://raw.githubusercontent.com/guedim/docker-postgres-pgbouncer/master/docker-compose.yml
```

Later, start the services ([Postgres](https://www.postgresql.org/) - [PgBouncer](https://pgbouncer.github.io) - [PgAdmin](https://www.pgadmin.org)) using [docker-compose](https://docs.docker.com/compose/):
```sh
docker-compose up
```

### Configuration<a name="configuration"></a>

Access to [PgAdmin](https://www.pgadmin.org))  console, using http://192.168.99.100:5050

> Use the credentials:
> Username:pgbouncer_database
> Password:12345678

Create a server, but dont forget to use the [PgBouncer](https://pgbouncer.github.io) credentials, host and port:

> Use the parameters:
> host:192.168.99.100
> port:6432
> user:postgres
> password:postgres
> database:postgres

Now, you are connected to Postgres but using PgBouncer.

### Monitoring<a name="install"></a>

adfaf

