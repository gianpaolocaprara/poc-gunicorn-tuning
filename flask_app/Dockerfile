# ./flask_app/Dockerfile-gunicorn
FROM python:3.6

RUN pip install Flask=='0.12.2' requests=='2.26.0' gunicorn=='19.7.1' gevent=='1.2.2' pymongo=='3.12.0' psycopg2-binary=='2.9.1' Flask-SQLAlchemy=='2.2' SQLAlchemy=='1.2.1' psycogreen=='1.0.2'

COPY app.py /app.py
COPY patched.py /patched.py
COPY mongo_app.py /mongo_app.py
COPY mongo_app_patched.py /mongo_app_patched.py
COPY config.py /config.py
COPY sql_app.py /sql_app.py
COPY sql_app_patched.py /sql_app_patched.py