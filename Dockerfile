ARG RUBY_VERSION=latest

FROM ruby:${RUBY_VERSION}
WORKDIR /usr/src/app
COPY . .
RUN bundle install

CMD ["tail", "-f", "/dev/null"]