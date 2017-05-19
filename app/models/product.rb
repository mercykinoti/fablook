class Product < ApplicationRecord
  include Filterable

  belongs_to :store

  validates_presence_of :name, :price, :description, :image, :category

    mount_uploader :image, AvatarUploader

 scope :price, -> (price) { where price: price }
 scope :productname, -> (name) { where("name like ?", "#{name}%")}
 scope :category, -> (category) { where category: category }
end
