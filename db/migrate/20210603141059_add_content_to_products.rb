class AddContentToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :name, :string
    add_column :products, :description, :text
    add_column :products, :price, :float
  end
end
