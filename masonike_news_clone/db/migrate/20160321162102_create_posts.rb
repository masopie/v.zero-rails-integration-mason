class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.references :user, index: true, foreign_key: true
      t.integer :votes

      t.timestamps null: false
    end
  end
end
