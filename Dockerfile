FROM nikolaik/python-nodejs:python3.9-nodejs15-alpine
RUN mkdir /app
WORKDIR /app
RUN apk add --no-cache git && \
    git clone https://github.com/mxnno/curation-platform.git /app
RUN ["yarn", "install"]
CMD ["yarn", "start"]
EXPOSE 9000

