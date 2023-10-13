#!/bin/bash
LANG=en_US.UTF-8,LC_ALL=en_US.UTF-8
PYTHONPATH=/lib/
echo Start migration
alembic upgrade head
echo End migration

gunicorn -c gunicorn.py --bind 0.0.0.0:80 app:gunicorn_app
exec "$@"
