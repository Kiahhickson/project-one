class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :listing_id
      t.text :user_review
      t.timestamps null: false
    end
  end
end

