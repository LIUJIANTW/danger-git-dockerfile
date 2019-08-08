FROM ruby:2.5

RUN apt-get update -qq && apt-get install -y build-essential p7zip unzip

RUN gem install danger-gitlab

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update &&  apt-get install yarn -y

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -

RUN apt-get install -y nodejs

CMD bundle exec danger pr