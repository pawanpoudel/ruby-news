require 'json'

class ArticleFileClient
  attr_accessor :article_builder

  def initialize(article_builder:)
    @article_builder = article_builder
  end

  def download_articles
    # 1. Read articles from a local file
    articles_string = File.read('./articles.json')

    # 2. Parse the JSON string into JSON objects
    articles_json = JSON.parse(articles_string)

    # 3. Build instances of the Article class from JSON objects
    article_builder.build_articles(articles_json: articles_json)
  end
end
