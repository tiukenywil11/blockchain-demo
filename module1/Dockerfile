# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000
CMD [ "python3", "blockchain.py" ]

# docker build . -t tiukenywil11/blockchain-demo
# docker run -p 5000:5000 -d tiukenywil11/blockchain-demo