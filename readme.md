# Local development

Something has changed here!

We made it so `node_modules` isn't build in my local system...

When mounted, running `npm install` on the docker container actually triggered an installation in my local working directory.

So we did a little trick by:

- Installing modules at a higher level in the docker image
- Removing node_modules from my local project folder via dockerignore

Npm will just look up the directory tree to find the next available `.node_modules` folder. 