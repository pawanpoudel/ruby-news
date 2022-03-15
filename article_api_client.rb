#!/usr/bin/env ruby
class ArticleApiClient
  attr_accessor :article_builder

  def initialize(article_builder:)
    @article_builder = article_builder
  end

  def download_articles
    # 1. Fetch articles json from a remote API service
    # 2. Ask article_builder to parse that JSON and build articles from that.
    # 3. Return a list of articles
  end
end
