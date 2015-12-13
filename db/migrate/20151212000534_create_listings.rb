class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.text :home_type
      t.text :room_type
      t.integer :accommodates
      t.text :address
      t.timestamps null: false
    end
  end
end





