# Create the dblink extension
CREATE EXTENSION dblink;
# Create the server using the pgbouncer credentials and dblink extension
CREATE SERVER pgbouncer FOREIGN DATA WRAPPER dblink_fdw OPTIONS (host '192.168.99.100',port '6432', dbname 'pgbouncer');
# Create the mapping
CREATE USER MAPPING FOR PUBLIC SERVER pgbouncer OPTIONS (user 'pgbouncer');

# Register pgbouncer data in one isolated schema
CREATE SCHEMA pgbouncer;
CREATE VIEW pgbouncer.clients 	AS SELECT * FROM dblink('pgbouncer', 'show clients') 	AS _(type text, "user" text, database text, state text, addr text, port integer, local_addr text, local_port integer, connect_time timestamp with time zone, request_time timestamp with time zone, ptr text, link text, remote_pid smallint, tls text);
CREATE VIEW pgbouncer.config  	AS SELECT * FROM dblink('pgbouncer', 'show config')  	AS _(key text, value text, changeable boolean);
CREATE VIEW pgbouncer.databases AS SELECT * FROM dblink('pgbouncer', 'show databases') 	AS _(name text, host text, port integer, database text, force_user text, pool_size integer, reserve_pool integer, pool_mode text, max_connections integer, current_connections integer, paused integer, disabled integer);
CREATE VIEW pgbouncer.lists 	AS SELECT * FROM dblink('pgbouncer', 'show lists') 		AS _(list text, items int);
CREATE VIEW pgbouncer.pools 	AS SELECT * FROM dblink('pgbouncer', 'show pools') 		AS _(database text, "user" text, cl_active integer, cl_waiting integer, sv_active integer, sv_idle integer, sv_used integer, sv_tested integer, sv_login integer, maxwait integer, pool_mode text);
CREATE VIEW pgbouncer.servers 	AS SELECT * FROM dblink('pgbouncer', 'show servers') 	AS _(type text, "user" text, database text, state text, addr text, port integer, local_addr text, local_port integer, connect_time timestamp with time zone, request_time timestamp with time zone, ptr text, link text, remote_pid smallint, tls text);
CREATE VIEW pgbouncer.sockets 	AS SELECT * FROM dblink('pgbouncer', 'show sockets') 	AS _(type text, "user" text, database text, state text, addr text, port int, local_addr text, local_port int, connect_time timestamp with time zone, request_time timestamp with time zone, ptr text, link text, recv_pos int, pkt_pos int, pkt_remain int, send_pos int, send_remain int, pkt_avail int, send_avail int);


