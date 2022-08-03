FROM node:14-alpine

RUN npm install

COPY . /bootcamp


WORKDIR /bootcamp


EXPOSE 8080

#CMD ["npm", "run", "initdb"]
CMD ["npm", "run", "dev"]