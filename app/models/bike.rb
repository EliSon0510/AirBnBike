class Bike < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy
  # has_one :description

  validates :category, inclusion: {in: ["e-bike", "mountain bike", "tandem bike", "children bike", "e-mountain bike", "city bike", "racing bike"], allow_nil: false}
  validates :price, numericality: {only_integer: true}
  validates :location, presence: :true

  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_category_and_location,
    against: [ :category, :location ],
    using: {
      tsearch: { prefix: true }
    }

end
