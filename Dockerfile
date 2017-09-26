FROM hypriot/rpi-alpine-scratch

ENV TAGSPACES_VERSION 2.9.0

RUN apk update \
    && apk upgrade \
    && apk add unzip wget nginx \
    && rm -rf /var/cache/apk/*

RUN wget --no-check-certificate \
    https://github.com/tagspaces/tagspaces/releases/download/v${TAGSPACES_VERSION}/tagspaces-${TAGSPACES_VERSION}-web.zip \
    && unzip tagspaces-${TAGSPACES_VERSION}-web.zip \
    && rm -rf /usr/share/nginx/html \
    && mv tagspaces /usr/share/nginx/html \
    && rm -rf tagspaces-${TAGSPACES_VERSION}-web.zip

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
