# ./flask_app/Dockerfile-gunicorn
FROM python:3.7

RUN pip install Flask requests gunicorn gevent

COPY app.py /app.py

CMD gunicorn --workers $WORKERS \
  --worker-connections $WORKER_CONNECTIONS \
  --timeout $TIMEOUT \
  --keep-alive $KEEP_ALIVE \
  --bind 0.0.0.0:$PORT_APP \
  --worker-class gevent \
  app:app