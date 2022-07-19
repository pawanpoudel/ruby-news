class FetchArticlesUseCase
  attr_accessor :article_service, :article_repository

  def initialize(article_service:, article_repository:)
    @article_service = article_service
    @article_repository = article_repository
  end

  def fetch_articles
    articles = article_service.download_articles

    if articles.nil?
      articles = article_repository.read_articles

      if articles.nil?
        return []
      end
    end

    return articles
  end
end
