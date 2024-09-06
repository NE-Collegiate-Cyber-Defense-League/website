FROM ubuntu:latest AS build

ARG WORKDIR=/app
ARG BUILD_URL=http://localhost:8080

WORKDIR $WORKDIR

RUN apt update && \
    apt install -y hugo npm

COPY . $WORKDIR

RUN npm clean-install && \
    hugo --theme=dot-org-hugo-theme -b ${BUILD_URL} && \
    npx -y pagefind --site public


FROM nginx:mainline-alpine

COPY --from=build /app/public /usr/share/nginx/html
