#!/bin/sh

# echo "CREATE DATABASE IF NOT EXISTS ${DB_NAME};" >> setup.sql
# echo "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWD}';" >> setup.sql
# echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASS}';" >> setup.sql
# echo "GRANT ALL PRIVILEGES ON *.* TO '${DB_USER}'@'%';" >> setup.sql
# echo "FLUSH PRIVILEGES;" >> setup.sql

# chmod 777 setup.sql

# psql -U postgres -d $DB_USER -f setup.sql

# Agregar comandos SQL al archivo setup.sql

touch setup.sql

echo "CREATE DATABASE IF NOT EXISTS ${POSTGRES_DB};" >> setup.sql
echo "CREATE USER ${POSTGRES_USER} WITH PASSWORD '${POSTGRES_PASSWORD}';" >> setup.sql
echo "ALTER USER 'root' WITH PASSWORD '${POSTGRES_PASSWORD}';" >> setup.sql
echo "GRANT ALL PRIVILEGES ON DATABASE ${POSTGRES_DB} TO ${POSTGRES_USER};" >> setup.sql
echo "CREATE TABLE mytable (" >> setup.sql
echo "    id SERIAL PRIMARY KEY," >> setup.sql
echo "    name VARCHAR(255)" >> setup.sql
echo ");" >> setup.sql
echo "INSERT INTO mytable (name) VALUES ('John');" >> setup.sql
echo "INSERT INTO mytable (name) VALUES ('Jane');" >> setup.sql

# Ejecutar el archivo setup.sql en PostgreSQL
psql -U $POSTGRES_USER -d $POSTGRES_DB -a -f setup.sql

