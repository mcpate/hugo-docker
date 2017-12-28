FROM mcpate/hugo-docker-base

# Copy unique artifacts over
COPY config.toml /go/app
COPY posts /go/app/content/posts

# Exposing what is being set-up below
EXPOSE 1313

# Get in to the right place
WORKDIR /go/app

RUN rm -rf /go/app/themes && ln -s /go/themes /go/app/

CMD ["hugo", "server", "--bind=0.0.0.0", "--port=1313", "-D"]

