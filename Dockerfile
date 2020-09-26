#Specify a base image
FROM node:slim

#Specify a working directory
WORKDIR /usr/app
# ADD and COPY are similar, ADD supports zips, web addresses, etc
#ADD . /usr/app

#Copy the dependencies file
# COPY ./package.json ./

#Install dependencies
# RUN npm install 

#Copy remaining files
COPY ./ /usr/app

#Default command
# CMD ["npm","start"]