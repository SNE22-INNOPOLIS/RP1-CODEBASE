# install package
FROM node:latest

# define working directory within container
WORKDIR /app

# copy packages
#COPY . .
COPY webdata/webapp.js .
COPY webdata/package.json .

# install dependency npm
RUN rm -rf node_modules package-lock.json
RUN npm install express


# expose web server listening port
EXPOSE 9000

# run code within container
CMD ["node", "/app/webdata/webapp.js"]
