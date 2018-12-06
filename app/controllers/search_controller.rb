class SearchController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart

  def new
    @keyword = 'python'
    @products = Product.order(:name)
  end

  def create
    @keyword = params[:keyword]
    key = @keyword.strip.downcase

    # if keywords contains nondigit char, we don't want to search price, because 
    # that's no chance to find a match there
    if /[^\d\.]/ =~ key
      @products = Product.where('description like ? or name like ?',
      %{%#{key}%},
      %{%#{key}%}
      )
    else
      @products = Product.where('description like ? or name like ? or price = ?',
      %{%#{key}%},
      %{%#{key}%},
      key)
    end

    # render "search#new" directly, in this way, action "new" will not be excuted, so
    # @keywork and @product will not be overwritten, that's what we want
    render :new 
  end
end
