FROM alpine:3

RUN mkdir -p sandriansyafridev/data
COPY ./compress/ /sandriansyafridev/data/
RUN pwd
RUN cd /sandriansyafridev/data/ && tar xvf backup.tar.gz
RUN pwd
RUN cd /sandriansyafridev/data/data && ls -l






