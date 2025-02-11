# Use the official Python image from the Docker Hub
FROM python:alpine

# Set the working directory
WORKDIR /application

# Copy the Django project code
COPY ./devopsproject /application

# Install dependencies
RUN pip install -r requirements.txt --no-cache-dir

# Expose the port the app runs on
EXPOSE 8000

# Run Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "devopsproject.wsgi:application"]