class AddImageToClothes < ActiveRecord::Migration
  def change
    add_column :clothes, :image, :string
  end
end
