class Choice < ApplicationRecord
  belongs_to :style

  validates_presence_of :answer

  mount_uploader :image, AvatarUploader
end
