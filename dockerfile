FROM nginx
WORKDIR /app
COPY ./src .

RUN apt-get update
RUN apt-get install -y git

RUN git clone https://github.com/LucaGiglio2507/DockerTest.git

WORKDIR /usr/share/nginx/html 

RUN rm *
RUN cp -r /app/src/* .