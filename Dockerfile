FROM python:2.7-alpine

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

LABEL maintainer="Gary Paterson <actis_gary@hotmail.com>" \
      version="1.0"

CMD FLASK_APP=app.py flask run --host=0.0.0.0 --port=5000
