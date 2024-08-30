FROM python:3.8-alpine
LABEL Author ="Yusuf Adekunle"
LABEL Project = "Flask-Task-App"

WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r --no-cache-dir requirements.txt
COPY . /app/
EXPOSE 8000
CMD ["python", "run.py"]