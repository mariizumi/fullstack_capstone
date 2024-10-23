#!/bin/bash
echo "Deleting old files..."
rm -Rf db.sqlite3 djangoapp/__pycache__

echo "Running migrations..."
python3 manage.py makemigrations
python3 manage.py migrate --run-syncdb
