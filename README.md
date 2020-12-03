# Service 404 - Fallback

- [Service 404 - Fallback](#service-404---fallback)
  - [Chart](#chart)
  - [Development Image Builds](#development-image-builds)
  - [Local Docker Testing](#local-docker-testing)

## Chart

The deployment chart for this project can be found in the [charts](https://github.com/flashflashrevolution/charts) repository.

## Development Image Builds

```zsh
# Get the sha of the latest commit you want to build from.
git log --oneline

# Then run the build. Uses multi-stage build, the access token wont be in the final image.
docker build -t ghcr.io/flashflashrevolution/flashflashrevolution/service-404-fallback:sha-shavalue .

# Push the built image.
docker push ghcr.io/flashflashrevolution/flashflashrevolution/service-404-fallback:sha-shavalue

# Here is an example of a functional sequence.
# NPM_TOKEN=averyvalidtokenstring
# docker build -t ghcr.io/flashflashrevolution/flashflashrevolution/service-404-fallback:sha-cbcc9cd .
# docker push ghcr.io/flashflashrevolution/service-404-fallback:sha-cbcc9cd
```

## Local Docker Testing

```zsh

# Build the image
docker build -t ghcr.io/flashflashrevolution/flashflashrevolution/service-404-fallback:dev .

# Run the image
docker container run -p 8080:80 ghcr.io/flashflashrevolution/flashflashrevolution/service-404-fallback:dev
```
