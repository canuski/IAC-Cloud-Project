# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install ClamAV and dependencies
RUN apt-get update && \
    apt-get install -y clamav curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* 

# Copy the script and requirements file into the container at /app
COPY virus_scan_script.py /app/
COPY telegram_sender.py /app/
COPY requirements.txt /app/
COPY .env /app/.env
COPY clamd.conf /etc/clamav/clamd.conf

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir --upgrade pip setuptools
RUN pip install --no-cache-dir -r requirements.txt

# Needed for database refresh
RUN freshclam

# Run the script when the container launches
CMD ["python3", "virus_scan_script.py"]
