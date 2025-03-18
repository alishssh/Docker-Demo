**Documentation**

Documentation

**TechStack**

Backend (Python)

**ProjectStructure**

/SMTMINTERN/Task4/

│

├── app.py                  # Main application source code
├── Dockerfile           
├── requirements.txt      

**Step-By-StepImplementation**

1.    Set your main file to make a dockerfile and image

In app.py

from flask import Flask

app = Flask(\_\_name\_\_)

@app.route('/')

def home():

   return "Hello, Docker!"

if \_\_name\_\_ == '\_\_main\_\_':

   app.run(host='0.0.0.0', port=5000)

2.     _Create aDockerfile_

\# Use Python base image

FROM python:3.9

\# Set the working directory

WORKDIR /app

\# Copy requirements file and installdependencies

COPY requirements.txt .

RUN pip install --no-cache-dir -rrequirements.txt && pip list

\# Copy the application code from currentdirectory

COPY . .

\# Expose the Flask port to view the result

EXPOSE 5000

\# Run the application

CMD \["python", "app.py"\]

**Make aDockerfile**

·      **.venv\\Scripts\\activate** (making a virtual environment to installnecessary dependencies that are present in requirements.txt.

·      Installby **pip install -r requirements.txt**

·      Then builddocker using **docker build --no-cache -tmyapp .**

·      Then runon 5000 port as **docker run -p 5000:5000myapp**

·      **View on** [**http://127.0.0.1:5000/**](http://127.0.0.1:5000/)
![Image](https://github.com/user-attachments/assets/ea7a609a-365c-4348-bc48-9cf05535bf97)

**Push to Dockerhub**

docker tag myapp alish007/myapp **(docker tag app name your\_dockerhub\_name)**

docker push alish007/myapp **(docker push your\_dockerhub\_name)**

**to run: dockerrun -p 5000:5000 alish007/myapp**

**TO FETCH**

**dockerpull alish007/myapp**

**Conclusion:**

Thisis how we make a docker container and push in dockerhub.
