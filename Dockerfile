FROM python:3.9-slim-buster
LABEL Author ="Yusuf Adekunle"
LABEL Project = "Flask-Task-App"

# Install build tools and GCC
#RUN apt update && apt install -y build-essential gcc

WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app/
RUN export FLASK_ENV=production
RUN export FLASK_APP=eventpizza
EXPOSE 8000
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8000", "run:app"]