FROM postgres:bullseye

RUN apt-get -y update && apt-get -y upgrade

COPY tools/init.sql /docker-entrypoint-initdb.d/init.sql

RUN touch /etc/postgresql.conf

RUN chmod 777 /docker-entrypoint-initdb.d/init.sql
RUN chmod 777 /docker-entrypoint-initdb.d

EXPOSE 5432

RUN chown -R postgres:postgres /docker-entrypoint-initdb.d