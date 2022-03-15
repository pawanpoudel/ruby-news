class Article
  attr_accessor :author,
                :title,
                :description,
                :url

  def initialize(author:, title:, description:, url:)
    @author = author
    @title = title
    @description = description
    @url = url
  end
end
