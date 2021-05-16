class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.string :title
      t.string :slug
      t.string :owner
      t.string :city
      t.float :lat
      t.float :lng
      t.string :category
      t.integer :bedrooms
      t.string :image
      t.text :description

      t.timestamps
    end

    add_index :rentals, :slug, unique: true
  end
end
