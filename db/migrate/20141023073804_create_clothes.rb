class CreateClothes < ActiveRecord::Migration
  def change
    create_table :clothes do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.timestamps

    end
  end
end
