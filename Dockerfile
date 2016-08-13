FROM node:5.11.1

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
#COPY package.json /usr/src/app/
#RUN npm install

# Bundle app source
COPY ./app.js /usr/src/app/

# EXPOSE 10010

CMD ["node", "app.js"]