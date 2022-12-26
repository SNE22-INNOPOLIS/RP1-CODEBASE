# install package
FROM node:latest

# define working directory within container
WORKDIR /app

# copy packages
COPY . .

# install dependency npm
RUN npm install express nodemon

# expose web server listening port
EXPOSE 3000

# run command within container
CMD ["node", "webapp.js"]
