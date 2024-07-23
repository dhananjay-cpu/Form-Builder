class AddKeyToForm < ActiveRecord::Migration[7.2]
  def change
    add_column :forms, :key, :string
    add_index :forms, :key, unique: true
  end
end
