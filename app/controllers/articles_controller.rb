class ArticlesController < ApplicationController
  def index
    @article = Article.find(params[:format])
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.category = Category.find(params[:category_id])
    @article.save
      redirect_to category_path(@article.category)
  end

  private

  def article_params
    params.require(:article).permit([:title, :description, :price, :address])
  end
end
