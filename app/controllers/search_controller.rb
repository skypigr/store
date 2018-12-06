class SearchController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart


  def new
    @keyword = 'python'
    if !@products
      @products = Product.order(:name)
    end
  end

  def create
    @keyword = params[:keyword].downcase
    @products = Product.where('description like ? or name like ? or price like ?',
    %{%#{@keyword}%},%{%#{@keyword}%},%{%#{@keyword}%})

    render :new 
  end
end
