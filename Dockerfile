FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# Cloud Run は $PORT を注入する。必ず 0.0.0.0:$PORT で待受けること
CMD exec gunicorn --bind :$PORT app:app
