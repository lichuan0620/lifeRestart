FROM node:lts-alpine

WORKDIR /app
COPY . .
RUN yarn build

RUN apk add --no-cache tini

ENTRYPOINT ["/sbin/tini", "--"]
CMD [ "yarn", "dev" ]
