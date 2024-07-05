# FROM python:3.8-slim

# Use a Python base image for ARM architecture 
FROM arm64v8/python:3.10-slim 

# Set the environment variable for your API key
ENV GEMI_API_KEY="your_api_key_here"

# Install dependencies 
COPY requirements.txt /app/
WORKDIR /app
RUN pip install -r requirements.txt

# Copy your application files 
COPY . /app

# Run your Flask application
CMD ["python", "public-server.py"] 