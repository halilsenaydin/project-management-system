#!/bin/sh

if [ -f "/app/config" ]; then
    . /app/config
else
    echo "Not Found Config File! Using Default Settings..."
    PROJECT_NAME="api"
fi

if [ ! -f "manage.py" ]; then
    django-admin startproject $PROJECT_NAME .
    python manage.py migrate
fi

rm -f db.sqlite3

exec python manage.py runserver 0.0.0.0:8000
