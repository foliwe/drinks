class ProductCategory < ApplicationRecord
  before_save :capitalize_name
  has_many :products
  validates :name ,presence: true, uniqueness: { case_sensitive: false }

  def capitalize_name
    self.name.capitalize!
  end
end
