"""Basic Flask app for CI/CD learning practice."""

from flask import Flask


app = Flask(__name__)


@app.route("/")
def hello():
    """Return a greeting for DevOps learner."""
    return "Hello DevOps Learner! 🌱"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
