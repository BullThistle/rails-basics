class Task < ActiveRecord::Base
  belongs_to :product

  validates :author, :presence => true
end