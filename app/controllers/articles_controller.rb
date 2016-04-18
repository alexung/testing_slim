class ArticlesController < ApplicationController
  def index
    @article = Article.find(params[:format])
  end

  def show
  end
end
