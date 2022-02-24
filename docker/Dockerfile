FROM alpine:latest as builder

ARG BASE_URL
ARG BASENAME
ENV BASE_URL=$BASE_URL
ENV BASENAME=$BASENAME

RUN apk add --no-cache git nodejs npm

RUN npm install npm@latest -g

RUN git clone https://github.com/lsu-ub-uu/diva-react-client.git

WORKDIR diva-react-client

RUN git status

RUN git pull

RUN git checkout origin/multiModuleTest

RUN git log --name-status HEAD^..HEAD

WORKDIR diva-cora-ts-api-wrapper

RUN npm install

RUN npm run build

WORKDIR ../diva-resource-fetcher

RUN npm install

RUN npm run build

WORKDIR ../diva-react-client

RUN npm install

RUN npm run coverage:deploy

RUN npm run fetch-diva-resources

RUN npm run build:prod


FROM nginx:stable-alpine

COPY nginx/nginx.conf /etc/nginx/conf.d

COPY entrypoint.sh /entrypoint.sh

COPY --from=builder /diva-react-client/diva-react-client/dist /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD sh /entrypoint.sh