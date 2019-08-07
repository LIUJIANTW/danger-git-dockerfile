FROM ruby:2.5

RUN apt-get update -qq && apt-get install -y build-essential p7zip unzip

RUN gem install danger-gitlab

CMD bundle exec danger pr