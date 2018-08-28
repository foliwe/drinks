class AddSlugToSubProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :sub_products, :slug, :string
    add_index :sub_products, :slug, unique: true 
  end
end
