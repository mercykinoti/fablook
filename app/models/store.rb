class Store < ApplicationRecord

	has_many :products
	validates_presence_of :name, :website, :logo

	mount_uploader :logo, AvatarUploader
end
