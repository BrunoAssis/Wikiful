class WelcomeController < ApplicationController
  def index
    @recent_articles = Article.order('created_at DESC').limit(5)
  end
end
