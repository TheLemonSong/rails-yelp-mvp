class Restaurant < ApplicationRecord
  # This class variable (array) has been stated here as instances may ned to accesss it
  # for their own purposes.
  CATAGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  # Active Pages stuff...
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATAGORIES }, presence: true
  validates :phone_number, presence: true, format: {with: /\d{2} ?\d{2} ?\d{2} ?\d{2} ?\d{2}/}
end
