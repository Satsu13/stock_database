FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential sqlite3 libsqlite3-dev nodejs

RUN mkdir /db
RUN /usr/bin/sqlite3 /db/test.db

ADD Gemfile /Gemfile
ADD Gemfile.lock /Gemfile.lock
RUN bundle install
ADD . /.