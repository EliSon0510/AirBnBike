class Bike < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy
  # has_one :description

  validates :category, inclusion: {in: ["e-bike", "mountain bike", "tandem bike", "children bike", "e-mountain bike", "city bike", "racing bike"], allow_nil: false}
  validates :price, numericality: {only_integer: true}

  has_one_attached :photo
end
