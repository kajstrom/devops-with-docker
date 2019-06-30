FROM ruby:2.6.0
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
COPY rails-example-project /app
WORKDIR /app
RUN npm install
ENV SECRET_KEY_BASE=3dc8b0885b3043c0e38aa2e1dc64
RUN gem install bundler && bundle install && rails db:migrate RAILS_ENV=production && rake assets:precompile
CMD rails s -e production