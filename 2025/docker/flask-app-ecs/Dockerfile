# Use a lightweight Python base image
FROM python:3.9-slim

# Set a working directory
WORKDIR /app

# Copy only requirements here
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose port 80
EXPOSE 80

# Run the application
CMD ["python", "run.py"]