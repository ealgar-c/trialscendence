#!/bin/sh

STATUS = 1

while [ $STATUS -ne 0]; do
	pg_isready -h $DB_HOST -p $DB_PORT -U $DB_USER
	STATUS=$?

	if [ $STATUS -eq 0]; then
		echo "Database is ready"
	else
		sleep 1
	fi
done

python3 manage.py makemigrations --no-input
python3 manage.py migrate --no-input
python3 manage.py runserver 0.0.0.0:8000
