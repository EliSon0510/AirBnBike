class Rental < ApplicationRecord
  belongs_to :bike
  belongs_to :user
  validates :start_date, presence:true
  validates :end_date, presence: true
  validates :user, presence: true
  validates :user, uniqueness: {scope: :bike}
end
