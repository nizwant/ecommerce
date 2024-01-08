defmodule Ecommerce.ShoppingCartFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Ecommerce.ShoppingCart` context.
  """

  @doc """
  Generate a unique cart user_uuid.
  """
  def unique_cart_user_uuid do
    raise "implement the logic to generate a unique cart user_uuid"
  end

  @doc """
  Generate a cart_item.
  """
  def cart_item_fixture(attrs \\ %{}) do
    {:ok, cart_item} =
      attrs
      |> Enum.into(%{
        price_when_carted: "120.5",
        quantity: 42
      })
      |> Ecommerce.ShoppingCart.create_cart_item()

    cart_item
  end
end
