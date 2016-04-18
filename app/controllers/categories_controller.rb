class CategoriesController < ApplicationController
  def index
    # TODO lol
    # FIXME lolol2
    # OPTIMIZE lolol3

    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    #binding.pry
    @articles = @category.articles
  end
end
