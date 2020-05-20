class Rental < ApplicationRecord
  belongs_to :bike
  belongs_to :user
  validates :price, presence:true
  validates :category, presence: true
  validates :user, presence: true
  validates :user, uniqueness: {scope: :bike}
end
