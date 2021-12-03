FROM node
WORKDIR /ethernetstat
COPY . /ethernetstat
RUN npm install
RUN npm install -g grunt-cli
RUN grunt
ENV WS_SECRET observer
ENV PORT 3001
CMD "npm" "start"
