FROM ruby:2.5.1
RUN apt-get update && apt-get upgrade -y
RUN apt-get install sqlite3 libsqlite3-dev nodejs -y
RUN gem install rails
ONBUILD COPY . /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD RUN bundle install && rake db:migrate && rake db:seed 
