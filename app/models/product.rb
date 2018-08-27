class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  before_save :capitalize_name
  belongs_to :product_category
   has_one_attached :image
   has_many :sub_products ,dependent: :destroy
  validates :name ,presence: true, uniqueness: { case_sensitive: false }

  def capitalize_name
    self.name.capitalize!
  end

end
