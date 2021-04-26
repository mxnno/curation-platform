FROM alpine:3.4
RUN apk add --no-cache git && \
    git clone https://github.com/mxnno/curation-platform/tree/deployment_testing
RUN mkdir /app
WORKDIR /app
COPY . .
RUN ["yarn", "install"]
CMD ["yarn", "start"]
EXPOSE 9001

