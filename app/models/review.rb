class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :content, :rating, :product, presence: true
  validates :rating, numericality: {
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 5
  }
  validates :content, length: { in: 50..250 }
end