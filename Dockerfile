# Don't Remove Credit HK-BOTS

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /HK-FILTER-BOT
WORKDIR /HK-FILTER-BOT
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
