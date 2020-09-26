#Specify a base image
FROM node:alpine

WORKDIR /usr/app
COPY ./package.json package-lock.json* ./
RUN npm install --no-optional && npm cache clean --force
ENV PATH /usr/app/node_modules/.bin:$PATH

# Move directories
WORKDIR /usr/app/local

#Copy remaining files
COPY . .

#Default command
CMD ["nodemon","index.js"]