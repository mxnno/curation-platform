FROM node:14

RUN mkdir /app
WORKDIR /app
COPY . .
CMD ["yarn", "start"]
EXPOSE 9001

