class StoresController < ApplicationController
  def index
    @page_title = 'Store Index'
    @products = Product.order(:title)
  end
end
