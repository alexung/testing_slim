class CategoriesController < ApplicationController
  def index
    # TODO properly configure application.html.slim
    # TODO check to see if the scss sheets that were created work

    # FIXME lolol2
    # OPTIMIZE lolol3

    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    #binding.pry
    #puts @category
  end
end
