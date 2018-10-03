class Inquiry < ApplicationRecord
  validates :full_name, :phone, :message, :email, presence: true
end
