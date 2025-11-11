from flask import Flask
import os
app = Flask(__name__)

@app.get("/")
def hello():
    return "OK"

if __name__ == "__main__":
    # ローカル検証用。Cloud Run では gunicorn が使われる
    app.run(host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))
