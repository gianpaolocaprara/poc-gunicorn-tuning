# ./flask_app/Dockerfile-gunicorn
FROM python:3.6

RUN pip install Flask requests gunicorn[gevent] pymongo psycopg2-binary Flask-SQLAlchemy SQLAlchemy psycogreen

COPY app.py /app.py
COPY patched.py /patched.py
COPY mongo_app.py /mongo_app.py
COPY mongo_app_patched.py /mongo_app_patched.py
COPY config.py /config.py
COPY sql_app.py /sql_app.py
COPY sql_app_patched.py /sql_app_patched.py