# ベースイメージ
FROM python:3.11-slim

# 作業ディレクトリ
WORKDIR /app

# 依存関係をコピーしてインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# ソースをコピー
COPY . .

# Cloud Run は PORT 環境変数を使う
ENV PORT=8080

# gunicornで起動
CMD exec gunicorn --bind :$PORT app:app
