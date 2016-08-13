FROM node:5.11.1

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY node_modules /usr/src/app/node_modules

# Bundle app source
COPY ./app.js /usr/src/app/

# EXPOSE 10010

CMD ["node", "app.js"]