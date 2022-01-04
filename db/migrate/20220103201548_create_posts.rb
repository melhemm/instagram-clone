class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.boolean :active
      t.references :account, foreign_key: true
      t.text :image_data

      t.timestamps
    end
  end
end
