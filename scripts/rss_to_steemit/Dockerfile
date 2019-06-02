# Bundler Image
FROM ruby:2.6.1 as builder
RUN apt-get update && apt-get install -y libssl1.0-dev
WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install -j4


# Main Image
FROM ruby:2.6.1
RUN apt-get update && apt-get install -y libssl1.0-dev
RUN mkdir -p /app
WORKDIR /app
ADD . /app
COPY --from=builder /usr/local/bundle /usr/local/bundle
ENTRYPOINT ["bundle", "exec", "ruby"]
CMD ["post.rb"]

# ENV STEEMIT_POSTING_PRIVATE_KEY