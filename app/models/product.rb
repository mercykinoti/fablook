class Product < ApplicationRecord
  include PgSearch
  multisearchable :against => [:name, :description, :price]

  belongs_to :store
  has_many :reviews

  validates_presence_of :name, :price, :description, :image

    mount_uploader :image, AvatarUploader

 scope :price, -> (price) { where price: price }
 scope :productname, -> (name) { where("name like ?", "#{name}%")}
end
