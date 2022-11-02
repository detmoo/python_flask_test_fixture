#!/bin/bash
source venv/bin/activate
exec gunicorn -b localhost:5000 --access-logfile - --error-logfile - "bowdata.test.flask:create_app()"
