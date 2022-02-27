# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5002
CMD [ "python3", "kennycoin_node_5002.py" ]

# docker build . -t tiukenywil11/blockchain-demo
# docker run -p 5002:5002 -d tiukenywil11/blockchain-demo