#DockerFile

#Use official Python image
FROM python:3.11-slim

#Work dir
WORKDIR /app

#Copy dependencies
COPY requirements.txt .

#Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

#Copy all code
COPY . .

#Set env var to Flask 
ENV FLASK_APP=run.py
ENV FLASK_RUN_HOST=0.0.0.0

#Expose port
EXPOSE 5000

#Run app
CMD ["flask", "run"]
