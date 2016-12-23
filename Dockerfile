FROM python:3.4
ENV PYTHONUNBUFFERED 1
RUN mkdir /opt/merkator
WORKDIR /opt/merkator
ADD requirements.txt /opt/merkator/
RUN pip install -r requirements.txt
ADD . /opt/merkator/
