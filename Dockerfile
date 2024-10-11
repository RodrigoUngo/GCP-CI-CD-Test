# Use the official lightweight Python image
FROM python:3.12-slim

# Set environment variables
ENV PYTHONUNBUFFERED True
ENV APP_HOME /app

# Create and set the working directory
WORKDIR $APP_HOME

# Copy the requirements file and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . ./

# Expose the port your application listens on
EXPOSE 8080 

# Run the application using Gunicorn 
CMD ["gunicorn", "-b", "0.0.0.0:8080", "main:app"]
