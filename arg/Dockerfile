FROM golang:1.18.1-alpine3.15

ARG app=main

RUN touch ${app}.txt
RUN echo "Hello World" > ${app}.txt

RUN ls -l
ENV app=${app}
RUN cat ${app}.txt

CMD cat ${app}.txt