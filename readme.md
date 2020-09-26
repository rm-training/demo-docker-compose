Demo for using Docker Compose...

1. You create an app (NodeJS)
2. You install deps

```
npm install express --save-dev
npm install redis --save-dev
```

3. You create a Dockerfile 

4. You build an image from it

```
docker build .
```

5. Then you can run the image

```
docker run <image-id>
```

6. You may see an error due to the redis connection failing...

So we'll need to orchestrate these guys so they can talk to one another -- Docker Compose does this for us!

7. Create a `docker-compose.yml` file

8. Start it up

```
docker-compose up
```

9. To rebuild containers when composing

```
docker-compose up --build
```


# Other maintenance tips

```
# containers running...
docker ps

# images built or downloaded...
docker images

# delete an image
docker rmi <image id>

# kill a container
docker kill <container id>
```

```
# start as a background process
docker-compose up -d

# shut down
docker-compose down
```

# Sources

Thanks to this walk-through: http://progressivecoder.com/docker-compose-nodejs-application-with-redis-integration/