## Running locally

```
jekyll serve
```

## Build+run the Docker image to test for deployment

```
# Build Docker image
./build-docker.sh

# Run it!
docker run -p 8080:80 gunsch.cc:latest
```
