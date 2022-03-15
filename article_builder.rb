require './article.rb'

class ArticleBuilder
  def build_articles(articles_json:)
    articles = []

    articles_json['articles'].each do |article_json|
      article = Article.new(
        author: article_json['author'],
        title: article_json['title'],
        description: article_json['description'],
        url: article_json['url']
      )

      articles.push(article)
    end

    articles
  end
end
