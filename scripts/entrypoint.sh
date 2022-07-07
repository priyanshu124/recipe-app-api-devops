#!/bin/bash

set -e

python manage.py collectstatic --noinput

uswgi socket: 9000 --workers 4 --master --enable-threads --module app.wsgi