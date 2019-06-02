require 'rss'
require 'open-uri'
require './steemit_helper'

url = 'https://stdout.fm/feed'
feed = RSS::Parser.parse(open(url).read)
rss_recent_post_title = feed.items.first.title

if rss_recent_post_title != SteemitHelper.get_recent_post_title
  PREFIX_STR = '<p><a href="https://stdout.fm">stdout.fm 듣기</a></p>'
  puts SteemitHelper.write_post(
    title: rss_recent_post_title, 
    body: PREFIX_STR + feed.items.first.description,
    tags: %w(kr kr-newbie podcast jjangjjangman kr-dev)
  )
else
  puts "There is no newer post."
end
