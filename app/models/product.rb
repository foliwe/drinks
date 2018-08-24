class Product < ApplicationRecord
  before_save :capitalize_name
  belongs_to :product_category
  validates :name ,presence: true, uniqueness: { case_sensitive: false }

  def capitalize_name
    self.name.capitalize!
  end
  
end
