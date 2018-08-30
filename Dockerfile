# Dockerfile
FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs && gem install bundler

RUN mkdir /graphqlapplication
WORKDIR /graphqlapplication
ADD . /graphqlapplication

RUN bundle install