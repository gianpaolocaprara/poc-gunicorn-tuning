# ./flask_app/Dockerfile-gunicorn
FROM python:3.6

RUN pip install Flask requests gunicorn=="19.7.1" gevent=="1.2.2" pymongo

COPY app.py /app.py
COPY patched.py /patched.py
COPY mongo_app.py /mongo_app.py
COPY mongo_app_patched.py /mongo_app_patched.py