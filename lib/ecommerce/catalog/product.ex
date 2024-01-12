defmodule Ecommerce.Catalog.Product do
  use Ecto.Schema
  import Ecto.Changeset
  alias Ecommerce.Catalog.Category

  schema "products" do
    field(:description, :string)
    field(:title, :string)
    field(:price, :decimal)
    field(:views, :integer)
    field(:art_image, :string)

    many_to_many(:categories, Category, join_through: "product_categories", on_replace: :delete)

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:title, :description, :price, :art_image])
    |> validate_required([:title, :description, :price, :art_image])
  end
end
