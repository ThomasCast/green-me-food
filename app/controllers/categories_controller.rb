class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
    @products = Product.where(params[:category_id])
  end
  
  def show
    @category = Category.find(params[:id])
  end
end
