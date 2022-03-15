class FetchArticlesUseCase
  attr_accessor :article_service

  def initialize(article_service:)
    @article_service = article_service
  end

  def fetch_articles
    article_service.download_articles

    # TODO: Figure out how to determine whether or not the download_articles call
    # was successful or not.
  end
end
