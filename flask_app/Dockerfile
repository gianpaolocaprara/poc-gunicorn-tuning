# ./flask_app/Dockerfile-gunicorn
FROM python:3.7

RUN pip install Flask requests gunicorn[gevent] pymongo

COPY app.py /app.py
COPY patched.py /patched.py
COPY mongo_app.py /mongo_app.py