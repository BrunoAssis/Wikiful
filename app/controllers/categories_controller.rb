class CategoriesController < ApplicationController
  def index
    @categories = Category.order(name: :asc)
  end

  def show
    @category = Category.find(params[:id])
    @articles = @category.articles.order(created_at: :desc)
  end
end