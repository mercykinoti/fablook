class Product < ApplicationRecord
  include PgSearch
  multisearchable :against => [:name, :description, :price]

  acts_as_votable

  belongs_to :store
  has_many :reviews
  has_and_belongs_to_many :categories

  validates_presence_of :name, :price, :description, :image

  mount_uploader :image, AvatarUploader

 scope :price, -> (price) { where price: price }
 scope :productname, -> (name) { where("name like ?", "#{name}%")}
end
