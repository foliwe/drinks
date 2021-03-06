class SubProduct < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :product
  has_one_attached :photo
  
  def blank_stars
   5 - rating.to_i
  end
end
