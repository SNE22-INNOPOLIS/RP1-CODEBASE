# install package
FROM node:latest

# copy packages
COPY package.json .
COPY webapp.js .

# install dependency npm
RUN npm install

# expose web server listening port
EXPOSE 3000

# run command within container
CMD ["node", "webapp.js"]
