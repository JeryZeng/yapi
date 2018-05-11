FROM node:10.1.0

RUN mkdir -p /yapi/vendors
WORKDIR /yapi/vendors
ADD . /yapi/vendors/
RUN npm install --production --registry https://registry.npm.taobao.org
RUN cp /yapi/vendors/config.json /yapi/

EXPOSE 3000

CMD ["node", "/yapi/vendors/server/app.js"]
