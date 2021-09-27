# ./slow_api/Dockerfile
FROM python:3.7

RUN pip install aiohttp

COPY api.py /api.py

CMD ["python", "/api.py"]