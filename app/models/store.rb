class Store < ApplicationRecord
	include PgSearch
	multisearchable :against => :name

	has_many :products
	validates_presence_of :name, :website, :logo

	mount_uploader :logo, AvatarUploader
end
