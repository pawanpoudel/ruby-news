#!/usr/bin/env ruby

require './dependency_injector.rb'

use_case = DependencyInjector.fetch_articles_use_case

articles = use_case.fetch_articles

articles.each do |article|
  puts article.author
  puts article.title
  puts article.description
  puts article.url
  puts
end

