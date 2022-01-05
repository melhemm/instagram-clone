class AddImageToAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :image_data, :text
    add_column :accounts, :descriptin, :text
    add_column :accounts, :webstie, :string
  end
end
