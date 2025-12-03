from flask import Flask
import socket

app = Flask(__name__)
hostname = socket.gethostname()

@app.route("/")
def hello():
    # TODO: Change 'yourlastname' to your real last name before committing
    return "Welcome to Suraj Final Test API Server"

@app.route("/host")
def host():
    return hostname

@app.route("/ip")
def ip():
    import socket
    return socket.gethostbyname(socket.gethostname())

if __name__ == "__main__":
    # For local testing only; in ECS we use gunicorn
    app.run(host="0.0.0.0", port=5000)
