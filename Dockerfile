
# Base Image
FROM python:3.10-slim

# set working directory
WORKDIR /app

# copy the current directory content into the container at /app
COPY . /app

# Install any needed dependencies
RUN pip install -r requirements.txt

# expose port
EXPOSE 8000

# command to the run the app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
