FROM relin/postgis

COPY ./initdb-postgis.sh /docker-entrypoint-initdb.d/initdb-postgis.sh

RUN rm -f /var/lib/postgresql/data/postmaster.pid
