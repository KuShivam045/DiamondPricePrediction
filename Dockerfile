FROM python:3.8-slim-buster
WORKDIR /app
COPY . /app
RUN apt update -y && apt upgrade -y

RUN apt update -y && pip install -r requirement.text
CMD [ "python3", "app.py" ]