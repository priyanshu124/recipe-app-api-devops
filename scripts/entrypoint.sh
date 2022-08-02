#!/bin/sh

set -e
python manage.py collectstatic --noinput
python manage.py wait_for_db
python manage.py migrate
uwsgi --socket :9000 --workers 4 --master --enable-threads --module app.wsgi

# Run uWSGi as TCP/IP socket on port 9000.  We can map the requests from our proxy to this port 