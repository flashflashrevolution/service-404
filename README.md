# Service 404 - Fallback

- [Service 404 - Fallback](#service-404---fallback)
  - [Chart](#chart)
  - [Development Image Builds](#development-image-builds)
  - [Local Docker Testing](#local-docker-testing)

## Chart

The deployment chart for this project can be found in the [charts](https://github.com/flashflashrevolution/charts) repository.

## Development Image Builds

```zsh
# First get a github access token with registry read permissions.
NPM_TOKEN=access_token

# Get the sha of the latest commit you want to build from.
git log --oneline

# Then run the build. Uses multi-stage build, the access token wont be in the final image.
docker build -t ghcr.io/flashflashrevolution/flashflashrevolution/service-404-fallback:sha-shavalue --build-arg NPM_TOKEN=${NPM_TOKEN} .

# Push the built image.
docker push ghcr.io/flashflashrevolution/flashflashrevolution/service-404-fallback:sha-shavalue

# Here is an example of a functional sequence.
# NPM_TOKEN=averyvalidtokenstring
# docker build -t ghcr.io/flashflashrevolution/flashflashrevolution/service-404-fallback:sha-cbcc9cd --build-arg NPM_TOKEN=${NPM_TOKEN} .
# docker push ghcr.io/flashflashrevolution/service-404-fallback:sha-cbcc9cd
```

## Local Docker Testing

```zsh
# First get a github access token with registry read permissions.
NPM_TOKEN=access_token

# Build the image
docker build -t ghcr.io/flashflashrevolution/flashflashrevolution/service-404-fallback:dev --build-arg NPM_TOKEN=${NPM_TOKEN} .

# Run the image
docker container -p 8080:80 run ghcr.io/flashflashrevolution/flashflashrevolution/service-404-fallback:dev
```
