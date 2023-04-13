FROM node

WORKDIR /data-volumes

COPY ./package.json .

RUN npm install

COPY . .

ENV PORT=3000

EXPOSE $PORT

CMD [ "node", "server" ]
