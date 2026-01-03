FROM node:latest AS build

ARG WORKDIR=/app
ARG BUILD_URL=http://localhost:8080
ARG HUGO_VERSION=0.148.1 \
    DART_SASS_VERSION=1.89.2

WORKDIR $WORKDIR

# Install dart-sass
ADD https://github.com/sass/dart-sass/releases/download/${DART_SASS_VERSION}/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz /tmp/
RUN tar -xf /tmp/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz -C /tmp/ && \
    cp -r /tmp/dart-sass/* /usr/local/bin && \
    rm -rf /tmp/dart-sass*

# Install Hugo
ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb /tmp/
RUN apt install -y /tmp/hugo_extended_${HUGO_VERSION}_linux-amd64.deb && \
    rm /tmp/hugo_extended_${HUGO_VERSION}_linux-amd64.deb

COPY . $WORKDIR

RUN npm clean-install --omit=dev --ignore-scripts && \
    hugo --theme=dot-org-hugo-theme -b ${BUILD_URL} && \
    npx -y pagefind --site public


FROM nginx:mainline-alpine

COPY --from=build /app/public /usr/share/nginx/html
