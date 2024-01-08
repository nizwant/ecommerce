defmodule EcommerceWeb.CartController do
  use EcommerceWeb, :controller

  alias Ecommerce.ShoppingCart

  def show(conn, _params) do
    render(conn, :show, changeset: ShoppingCart.change_cart(conn.assigns.cart))
  end
end
