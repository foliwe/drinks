class CreateSubProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_products do |t|
      t.string :name
      t.string :photo
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
