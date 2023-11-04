class Customer < ApplicationRecord
  has_one_attached :image

  validates :full_name, presence: true
  # validates :email, presence: true
  # Do we need anymore than one? ^ Could do phone and/or notes I suppose
end
