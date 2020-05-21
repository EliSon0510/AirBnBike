class Bike < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy

  validates :category, inclusion: {in: ["e-bike", "mountain bike", "tandem bike", "children bike", "e-mountain bike", "city bike", "racing bike"], allow_nil: false}
  validates :price, numericality: {only_integer: true}
  validates :location, presence: :true

  has_one_attached :photo


  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

    # include PgSearch::Model
  # pg_search_scope :search_by_category_and_localisation,
  #   against: [ :category ,:localisation ],
  #   using: {
  #     tsearch: { prefix: true } # <-- now `superman batm` will return something!
  #   }

end
