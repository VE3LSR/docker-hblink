FROM python:2.7.14
MAINTAINER projects@ve3lsr.ca

# RUN apt-get update && apt-get install -yq git && apt-get clean && rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*

WORKDIR /opt/

RUN git clone -b HB_Bridge https://github.com/n0mjs710/HBlink.git

WORKDIR /opt/HBlink

ADD dmr_utils* /tmp

RUN pip install /tmp/dmr_utils*

RUN pip install --no-cache-dir -r requirements.txt

# CMD ./hblink.py
CMD python ./HB_Bridge.py
