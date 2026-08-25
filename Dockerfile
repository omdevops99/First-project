FROM python:3.14-slim
WORKDIR /app
COPY application/app.py .
CMD ["python", "app.py"] 
