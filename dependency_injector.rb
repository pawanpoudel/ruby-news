require './fetch_articles_use_case.rb'
require './article_file_client.rb'
require './article_builder.rb'

class DependencyInjector
  class << self
    def fetch_articles_use_case
      FetchArticlesUseCase.new(article_service: article_file_client)
    end

    def article_file_client
      ArticleFileClient.new(article_builder: ArticleBuilder.new)
    end

    def article_api_client
      # ...
    end
  end
end
