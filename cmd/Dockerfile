FROM alpine:3


#create file name is hello-world.txt
RUN touch hello-world.txt 

#write "Hello World" using echo command
RUN echo "Hello World FROM" > hello-world.txt

RUN mkdir hello
RUN mv hello-world.txt hello 

CMD cat hello/hello-world.txt


 


