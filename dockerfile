FROM node:18-alpine
WORKDIR /app
# copy the dependencies and install the 
COPY package.json .
COPY package-lock.json .
RUN npm install --silent
# copy over the source and build
COPY . .
RUN npm build
