class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @categories_frais = Category.where(group: "Produits Frais")
    @categories_entretien = Category.where(group: "Produits de la maison")
    @products = Product.where(params[:category_id])
  end

  def show
    @category = Category.find(params[:id])
  end
end
