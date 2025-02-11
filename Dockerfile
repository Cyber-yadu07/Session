FROM python:3.9.7

RUN apt update && apt upgrade -y
RUN apt install -y
RUN pip3 install -U pip
COPY requirements.txt /requirements.txt
RUN cd /
RUN pip3 install -U -r requirements.txt
RUN mkdir /Session
WORKDIR /Session
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
