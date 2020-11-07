FROM mysql:5.7.30
LABEL MAINTAINER="likebeta<ixxoo.me@gmail.com>"

COPY ./mysql_db_schema/*.sql /docker-entrypoint-initdb.d/
