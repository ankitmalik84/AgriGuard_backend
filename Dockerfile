# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN pip install intel-tensorflow

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Define environment variable
ENV FLASK_APP=app.py

# Expose the Flask port
EXPOSE 5000

# Run the Flask application
CMD ["flask", "run", "--host", "0.0.0.0"]
