class Product < ApplicationRecord
  include PgSearch
  multisearchable :against => [:name, :description, :category, :price]

  belongs_to :store
  has_many :reviews

  validates_presence_of :name, :price, :description, :image, :category

    mount_uploader :image, AvatarUploader

 scope :price, -> (price) { where price: price }
 scope :productname, -> (name) { where("name like ?", "#{name}%")}
 scope :category, -> (category) { where category: category }
end
