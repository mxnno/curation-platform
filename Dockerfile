FROM nikolaik/python-nodejs:python3.9-nodejs15-alpine
RUN mkdir /app
WORKDIR /app
RUN apk add --no-cache build-base
RUN apk add --no-cache python2 && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    rm -r /root/.cache
RUN apk add --no-cache git && \
    git clone https://github.com/mxnno/curation-platform.git /app
    git clone https://github.com/mxnno/curation-platform.git .
RUN ["yarn", "install"]
CMD ["yarn", "start"]
EXPOSE 9000
EXPOSE 9001

