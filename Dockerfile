# install package
FROM node:latest

# define working directory within container
#WORKDIR /app

# copy packages
#COPY . .
COPY webdata/webapp.js .
COPY webdata/package.json .

# install dependency npm
#RUN rm -rf node_modules package-lock.json
#RUN npm install express
RUN npm install

# expose web server listening port
EXPOSE 3000

# run command within container
CMD ["node", "webapp.js"]
