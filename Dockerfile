FROM python:3.12.2-slim

WORKDIR /app

COPY src /app/src
ADD requirements.txt /app

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "python3", "-u", "-m", "src.app" ]