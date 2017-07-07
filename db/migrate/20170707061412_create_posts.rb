class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :cat_name
      t.integer :user_id
      t.string :direction
      t.integer :runtime
      t.text :content
      t.string :image_url, :default => ""

      t.references :category
      t.timestamps null: false
    end
  end
end
