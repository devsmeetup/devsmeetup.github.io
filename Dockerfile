FROM node:10-alpine AS builder
WORKDIR /app
RUN apk add --no-cache \
	python \
    make \
    g++
CMD sh -c "yarn install && yarn run build"

FROM builder AS app
ADD package.json /app
ADD yarn.lock /app
RUN yarn install
RUN yarn run build
