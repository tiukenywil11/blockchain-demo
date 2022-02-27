# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5003
CMD [ "python3", "kennycoin_node_5003.py" ]

# docker build . -t tiukenywil11/blockchain-demo
# docker run -p 5003:5003 -d tiukenywil11/blockchain-demo