FROM nodesource/node:4.0

RUN mkdir /home/ttt

ADD package.json /home/ttt/package.json
RUN cd /home/ttt/ && npm install
ADD . /home/ttt

CMD ["node","/home/ttt/app.js"]