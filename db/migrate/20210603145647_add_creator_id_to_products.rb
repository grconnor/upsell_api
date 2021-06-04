class AddCreatorIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :creator_id, :string
  end
end
