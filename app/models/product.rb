class Product < ApplicationRecord
  belongs_to :store

  validates_presence_of :name, :price, :description, :image, :category

    mount_uploader :image, AvatarUploader
end
