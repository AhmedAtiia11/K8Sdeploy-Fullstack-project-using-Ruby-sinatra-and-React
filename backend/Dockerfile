FROM ruby:2.7
WORKDIR /app
COPY server.rb Gemfile /app/
RUN bundle install
CMD ["ruby","server.rb"]
