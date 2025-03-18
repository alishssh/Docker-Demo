# Use Python base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt && pip list

# Copy the application code from current directory
COPY . .

# Expose the Flask port to view the result
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
