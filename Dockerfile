FROM node:14-alpine

WORKDIR /bootcamp

RUN npm install

COPY . /bootcamp


EXPOSE 8080

#CMD ["npm", "run", "initdb"]
CMD ["npm", "run", "dev"]