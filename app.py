
from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Welcome to GitOps with Kubernetes and Jenkins!"
