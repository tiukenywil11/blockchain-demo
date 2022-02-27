# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5001
CMD [ "python3", "kennycoin_node_5001.py" ]

# docker build . -t tiukenywil11/blockchain-demo
# docker run -p 5001:5001 -d tiukenywil11/blockchain-demo