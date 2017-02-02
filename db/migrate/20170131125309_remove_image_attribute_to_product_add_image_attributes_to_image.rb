class RemoveImageAttributeToProductAddImageAttributesToImage < ActiveRecord::Migration[5.0]
  def change
    add_column :suppliers, :image_1, :string
    add_column :suppliers, :image_2, :string
    remove_column :products, :image, :string
  end
end
