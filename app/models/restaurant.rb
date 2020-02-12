class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "Kebab", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
