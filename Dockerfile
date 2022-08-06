# Import node image
FROM node:14.19-slim

# Set the work directory
WORKDIR /app
COPY . /app

EXPOSE 8080

# Install dependencies
RUN apt-get update

RUN npm install

RUN npm install -g nodemon

# Copy files to the container
COPY . /app

# Run the app and the db
ENTRYPOINT npm run initdb && npm run dev
#CMD npm run dev && npm run initdb

