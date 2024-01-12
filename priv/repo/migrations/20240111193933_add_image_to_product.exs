defmodule Ecommerce.Repo.Migrations.AddImageToProduct do
  use Ecto.Migration

  def change do
    alter table(:products) do
      add(:art_image, :string,
        default: "https://upload.wikimedia.org/wikipedia/commons/2/2f/Rickrolling_QR_code.png"
      )
    end
  end
end
