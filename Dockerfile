FROM node:12-alpine

ENV NODE_ENV=dev

EXPOSE 3000/tcp

# Sets CWD to a specific path
WORKDIR /usr/src/app

# Copies package files to later install dependencies
COPY ./app/package*.json ./
# Installs dependencies
RUN yarn

# Copies the rest of the application
COPY ./app .

# Starts Webserver
CMD [ "yarn", "dev" ]
