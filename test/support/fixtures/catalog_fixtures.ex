defmodule Ecommerce.CatalogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Ecommerce.Catalog` context.
  """

  @doc """
  Generate a product.
  """
  def product_fixture(attrs \\ %{}) do
    {:ok, product} =
      attrs
      |> Enum.into(%{
        description: "some description",
        price: "120.500000",
        title: "some title",
        views: 42
      })
      |> Ecommerce.Catalog.create_product()

    product
  end

  @doc """
  Generate a unique category title.
  """
  def unique_category_title, do: "some title#{System.unique_integer([:positive])}"

  @doc """
  Generate a category.
  """
  def category_fixture(attrs \\ %{}) do
    {:ok, category} =
      attrs
      |> Enum.into(%{
        title: unique_category_title()
      })
      |> Ecommerce.Catalog.create_category()

    category
  end
end
