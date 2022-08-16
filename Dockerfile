# syntax=docker/dockerfile:1

FROM python:3.11-rc-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN  curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3.8 get-pip.py
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
