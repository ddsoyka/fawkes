FROM python:3.7.9

COPY . /fawkes/

WORKDIR /fawkes

RUN pip3 install .

WORKDIR /

RUN rm -rf /fawkes && mkdir /data

VOLUME [ "/data" ]

ENTRYPOINT [ "fawkes", "--directory", "/data" ]

CMD [ "--mode", "min", "--batch-size", "1", "--format", "png" ]