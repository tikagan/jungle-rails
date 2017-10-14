class Review < ActiveRecord::Base
  belongs_to :product

  validates :product_id,
            presence: true
  validates :user_id,
            presence: true
  validates :description,
            presence: true,
            length: { minimum: 10 }
  validates :rating,
            presence: true
  validate :valid_rating

  def valid_rating
    unless self.rating >= 1 && self.rating <= 10
      errors.add(:rating, "Rating must be between 1 and 10")
    end
  end

end
