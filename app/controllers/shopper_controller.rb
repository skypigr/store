class ShopperController < ApplicationController
  def index
    @products = Product.order(:name)
  end
end
