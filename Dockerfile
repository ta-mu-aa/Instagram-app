FROM ruby:2.5.1

RUN apt-get update -qq && \
  apt-get install -y build-essential \
  nodejs\
  yarn\
  mysql-server\
  mysql-client

WORKDIR /ehime-log

COPY Gemfile /ehime-log/Gemfile
COPY Gemfile.lock /ehime-log/Gemfile.lock

RUN gem install bundler
RUN bundle install

RUN mkdir -p tmp/sockets