FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /eotc-helper
WORKDIR /eotc-helper
COPY eotc-helper/Gemfile /eotc-helper/Gemfile
COPY eotc-helper/Gemfile.lock /eotc-helper/Gemfile.lock
RUN bundle install
COPY eotc-helper /eotc-helper/
WORKDIR /eotc-helper/eotc-helper
