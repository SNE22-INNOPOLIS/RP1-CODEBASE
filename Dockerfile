# install package
FROM node:latest

# define working directory within container
WORKDIR /app

# copy packages
COPY . .

# install dependency npm
#RUN npm init -y
RUN rm -rf node_modules package-lock.json
RUN npm install express

# expose web server listening port
EXPOSE 3000

# run command within container
CMD ["node", "webapp.js"]
