class AddRatingToSubProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :sub_products, :rating, :integer, default: 2
  end
end
