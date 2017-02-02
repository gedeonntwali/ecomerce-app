class RemoveAndAddAttributesToImage < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :url, :string
    add_column :images, :product_id, :string
    remove_column :suppliers, :image_1, :string
    remove_column :suppliers, :image_2, :string
  end
end
