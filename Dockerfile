FROM nginx:1.19.5-alpine
LABEL org.opencontainers.image.source https://github.com/flashflashrevolution/service-404-fallback
COPY src /usr/share/nginx/html
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
