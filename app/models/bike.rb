class Bike < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy

  validates :category, inclusion: {in: ["e-bike", "mountain bike", "tandem bike", "children bike", "e-mountain bike", "city bike", "racing bike"], allow_nil: false}
  validates :price, numericality: {only_integer: true}
  validates :location, presence: :true

  has_one_attached :photo
end
