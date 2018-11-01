class Dish < ApplicationRecord
  mount_uploader :image, ImageUploader	
  belongs_to :course
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
