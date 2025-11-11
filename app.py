from flask import Flask
import os
app = Flask(__name__)

@app.get("/")
def hello():
    return "Hello Cloud Run!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))
