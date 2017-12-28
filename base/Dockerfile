FROM golang:alpine

RUN apk update
RUN apk upgrade

RUN apk add git

# Hugo dependencies
RUN go get github.com/kardianos/govendor
RUN govendor get github.com/gohugoio/hugo
RUN go install github.com/gohugoio/hugo

# Set up the hugo app directory and install all themes
RUN hugo new site app
RUN git clone --depth 1 --recursive https://github.com/gohugoio/hugoThemes.git /go/app/themes

