class Restaurant < ApplicationRecord
  @category = [ "chinese", "italian", "japanese", "french", "belgian" ]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: @category }
  has_many :reviews, dependent: :destroy
end
