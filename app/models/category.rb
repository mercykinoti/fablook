class Category < ApplicationRecord
  include PgSearch
  multisearchable :against => :name

  has_and_belongs_to_many :products
end
