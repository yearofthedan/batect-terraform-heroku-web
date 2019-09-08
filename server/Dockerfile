FROM node:12.10.0-alpine
COPY . /app
WORKDIR /app
EXPOSE ${PORT}
HEALTHCHECK CMD wget -q -O - localhost:${PORT}

CMD yarn start
