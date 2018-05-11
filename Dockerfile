 FROM readytalk/nodejs

WORKDIR /app
ADD package.json /app/
RUN npm install --production --registry https://registry.npm.taobao.org
ADD . /app

RUN npm run install-server &  ykit pack -m

CMD []

ENTRYPOINT ["/nodejs/bin/node", "server/app.js"]
