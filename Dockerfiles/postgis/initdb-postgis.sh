#!/bin/sh
POSTGRES="gosu postgres"

#$POSTGRES pg_ctl -w start
$POSTGRES psql  -c "CREATE ROLE merkator ENCRYPTED PASSWORD 'merkator' LOGIN;"
$POSTGRES psql  -c 'CREATE DATABASE merkator OWNER merkator ;'
$POSTGRES psql -d merkator -c 'CREATE EXTENSION postgis;'
$POSTGRES psql -d merkator -c 'GRANT ALL ON geometry_columns TO PUBLIC;'
$POSTGRES psql -d merkator -c 'GRANT ALL ON spatial_ref_sys TO PUBLIC;'
if [ -d /docker-entrypoint-initdb.d ]; then
    for f in /docker-entrypoint-initdb.d/*.dump; do
        [ -f "$f" ] && $POSTGRES psql -d merkator -f "$f"
    done
fi
#$POSTGRES pg_ctl stop
