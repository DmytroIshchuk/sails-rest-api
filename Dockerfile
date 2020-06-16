FROM node:10.15.3
WORKDIR /app
COPY . .
RUN npm install && npm cache clean --force && npm install sails -g
EXPOSE 1337
CMD [ "sails", "lift" ]