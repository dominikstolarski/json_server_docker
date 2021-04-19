# Docker image built on top of JSON Server 
Docker image with json server

JSON Server is a ready to use API for prototyping, mocking, playing around.

* [Github repo of the project](https://github.com/typicode/json-server)


## Getting started

Download a [docker image](https://hub.docker.com/r/randominik/json_server_docker)

Run docker image as a container

```
docker run -p 3000:3000 randominik/json_server_docker:v1.0
```

That's it!
Now if you go to [http://localhost:3000/posts/1](http://localhost:3000/posts/1), you'll get

```json
{ "id": 1, "title": "json-server", "author": "typicode" }
```

If you make POST, PUT, PATCH or DELETE requests, changes will be automatically saved.

For detailed API documentation please visit [project's page](https://github.com/typicode/json-server)


## Using your own data collection

Json server looks for data.json file and creates one only if such file is not found.
TO use your data you need to prepare data.json file and run docker image with "-v" (volume) option and pass a path to a directory with your data.json file.

```
docker run -p 3000:3000 -v /path/to/your/directory/with/data_file/:/usr/src/api randominik/json_server_docker:v1.0
```
