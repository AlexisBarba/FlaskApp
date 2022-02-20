# Use base image

# Install python and pip

# Install Flask needded by pathon app

# copy python file

# copy html file

# the container should expose port

# run the application
# syntax=docker/dockerfile:1

# start by pulling the python image
FROM python:3.8-alpine

# copy the requirements file into the image
COPY ./requirements.txt /app/requirements.txt

# switch working directory
WORKDIR /app

# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY . /app
EXPOSE 5000
# configure the container to run in an executed manner
ENTRYPOINT [ "python" ]


CMD [ "app.py" ]