# 🐳 First Docker Project: Containerizing a Python (Flask) Web App

This learning project covers the fundamentals of **Docker** (images, containers, Dockerfile, port mapping) by containerizing a simple web application built with **Python** and **Flask**.

## 📁 Project Structure

* `app.py`: Simple Flask web server listening on `0.0.0.0:5000`.
* `requirements.txt`: Python dependencies (`Flask`).
* `Dockerfile`: Instructions to build the container image using `python:3.10-slim`.

## 🚀 Run with Docker

1. **Build the Docker image:**
   ```bash
   docker build -t my-flask-app .
   ```

2. **Run the container:**
   ```bash
   docker run -p 5000:5000 my-flask-app
   ```

3. **Access the app:**
   Open [http://localhost:5000](http://localhost:5000) in your browser.
