# Use an official Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy app files
COPY app /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Flask port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]

