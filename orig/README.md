## Running locally

Sufficient but janky:
```
# HTTP server for file serving
python3 -m http.server 8080
# CSS auto-recompile
while inotifywait site.less ; do lessc site.less > site.css ; done
```

## Build+run the Docker image

```
# Build Docker image
./build.sh

# Run it!
docker run -p 8080:80 gunsch.cc:latest
```
