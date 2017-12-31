FROM scratch

ENV VERSION v1.1.1

ADD gout / 

CMD ["/gout", "hello"] 
