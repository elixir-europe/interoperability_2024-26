FROM ruby:3.3

# elixir-toolkit-theme 6.x requires Jekyll >= 4.1
RUN gem install jekyll -v '4.4.1' \
    && gem install bundler

WORKDIR /usr/src/app
