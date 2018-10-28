FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /Smart_UI
WORKDIR /Smart_UI
COPY Gemfile /Smart_UI/Gemfile
COPY Gemfile.lock /Smart_UI/Gemfile.lock
RUN bundle install
COPY . /Smart_UI