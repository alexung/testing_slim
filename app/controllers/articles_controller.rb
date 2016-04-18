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

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    redirect_to category_article_path(@article.category, @article)
  end

  private

  def article_params
    params.require(:article).permit([:title, :description, :price, :address])
  end
end
