FROM nikolaik/python-nodejs:python3.9-nodejs16

RUN apt update && apt upgrade -y
RUN apt install ffmpeg -y

COPY requirements.txt /requirements.txt
RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /VC-PLAYER-BOT
WORKDIR /VC-PLAYER-BOT
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
