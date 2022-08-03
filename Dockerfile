FROM node:14-alpine

COPY . /bootcamp

WORKDIR /bootcamp

RUN npm install



EXPOSE 8080

CMD ["npm", "run", "initdb"]
CMD ["npm", "run", "dev"]