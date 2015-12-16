class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.text :home_type
      t.text :room_type
      t.integer :accommodates
      t.text :address
      t.integer :user_id
      t.text :title
      t.integer :price
      t.integer :bedrooms
      t.integer :beds
      t.integer :bathrooms
      t.text :description
      t.text :hero_picture
      t.timestamps null: false
    end
  end
end






