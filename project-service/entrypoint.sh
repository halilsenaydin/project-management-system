#!/bin/sh

if [ -f "/app/.config" ]; then
    . /app/.config
else
    echo "Not Found Config File! Using Default Settings..."

    PROJECT_NAME="microservice"
fi

if [ ! -f "manage.py" ]; then
    django-admin startproject $PROJECT_NAME .
fi

# Wait for DB
echo "Waiting for postgres..."
while ! nc -z project-db 5432; do
  sleep 1
done
echo "PostgreSQL started"

python manage.py migrate
python manage.py collectstatic --noinput

exec python manage.py runserver 0.0.0.0:8000
