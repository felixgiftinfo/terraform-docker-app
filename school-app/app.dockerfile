FROM nginx:stable-alpine

COPY dist/spa/ /usr/share/nginx/html
