# Base Image: This can be deduced from environment variables or commonly used base images for similar setups.
FROM python:3.9 

# Environment Variables
ENV FLASK_APP=app.py

# Set the working directory
WORKDIR /app

# Copy the application code into the container
COPY . /app  

COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Default Command/Entry Point
CMD ["flask", "run", "--host=0.0.0.0"] 

# Expose the port(s) being used
EXPOSE 5000 