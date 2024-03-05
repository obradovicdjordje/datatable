FROM node:20-alpine

RUN apk update && apk add bash

RUN echo 'alias ..="cd .."' >> ~/.bashrc
RUN echo 'alias p="python3"' >> ~/.bashrc
RUN echo 'alias ll="ls -al"' >> ~/.bashrc

RUN npm install -g @angular/cli
RUN apk add git

EXPOSE 4200

WORKDIR /home