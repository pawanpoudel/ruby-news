require './fetch_articles_use_case.rb'
require './article_file_client.rb'
require './article_builder.rb'
require './article_database_manager.rb'
require 'yaml'

class DependencyInjector
  class << self
    def fetch_articles_use_case
      FetchArticlesUseCase.new(article_service: article_file_client,
                               article_repository: article_database_manager)
    end

    def article_file_client
      ArticleFileClient.new(article_builder: ArticleBuilder.new)
    end

    def article_api_client
      # ...
    end

    def article_database_manager
      database_config = YAML.load_file('database_config.yml')
      ArticleDatabaseManager.new(database_config: database_config)
    end
  end
end
