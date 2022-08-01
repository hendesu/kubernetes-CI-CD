FROM node:14-alpine

WORKDIR /bootcamp-app

RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "run", "initdb"]
CMD ["npm", "run", "dev"]