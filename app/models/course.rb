class Course < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :dishes, dependent: :destroy
end
