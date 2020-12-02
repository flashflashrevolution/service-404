FROM nginx:1.19.5-alpine
COPY . /usr/share/nginx/html

LABEL org.opencontainers.image.source https://github.com/flashflashrevolution/service-404-fallback

