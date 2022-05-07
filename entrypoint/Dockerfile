FROM alpine:3

RUN touch example.txt
RUN echo "Hello Example" > example.txt

RUN ls -l

ENTRYPOINT [ "cat" ]
CMD [ "example.txt" ]