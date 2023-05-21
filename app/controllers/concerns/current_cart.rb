module CurrentCart
  private

  def set_cart
    return @cart = Cart.find_or_create_by(id: session[:cart_id]) if session[:cart_id]

    @cart = Cart.create
    session[:cart_id] = @cart.id

    @cart
  end
end
