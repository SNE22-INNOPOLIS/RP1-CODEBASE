# install package
FROM node:latest

# copy packages
COPY package.json .
COPY webapp.js .

# install dependency npm
RUN npm install -g npm@7.5.4

# expose web server listening port
EXPOSE 3000

# run command within container
CMD ["node", "webapp.js"]
