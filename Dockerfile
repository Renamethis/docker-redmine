FROM ruby:3.0.4
ENV BUNDLER_VERSION=2.7.0    
RUN gem update --system 3.2.3
ADD . .
RUN bundle install --without development test
RUN bundle exec rake generate_secret_token
