class AddDescriptionRemoveType < ActiveRecord::Migration[5.0]

  def change
    add_column :products, :description, :text
    remove_column :products, :type, :string
    change_column :products, :price, "numeric USING CAST(price AS numeric)"
    change_column :products, :price, :decimal, precision: 6, scale: 2
  end
end
