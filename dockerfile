FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /stock_database
WORKDIR /stock_database
ADD Gemfile /stock_database/Gemfile
ADD Gemfile.lock /stock_database/Gemfile.lock
RUN bundle install
ADD . /stock_database