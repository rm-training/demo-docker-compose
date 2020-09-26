# Local development

1. Defined a volume for our docker container

Mounting our local directory to the `/usr/app` directory.

This isn't enough though...

Our NodeJS server needs to restart to show updates.

2. Install `nodemon` or another file monitor to trigger server restarts

`npm install --save-dev nodemon`

Add into the `package.json` the new `start` command:

`nodemon index.js`