FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /sakura-test
COPY Gemfile Gemfile.lock /sakura-test/
RUN bundle install