FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install -y build-essential default-libmysqlclient-dev nodejs

RUN mkdir /yakyu
WORKDIR /yakyu

COPY Gemfile /yakyu/Gemfile
COPY Gemfile.lock /yakyu/Gemfile.lock
RUN bundle install
COPY . /yakyu
