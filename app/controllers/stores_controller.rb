class StoresController < ApplicationController
  def index
    if session[:counter].blank?
      session[:counter] = 1
    else
      session[:counter] += 1
    end

    @page_title = 'Store Index'
    @products = Product.order(:title)
  end
end
