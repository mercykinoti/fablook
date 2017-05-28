class Choice < ApplicationRecord
  belongs_to :style

  has_and_belongs_to_many :answers

  validates_presence_of :answer

  mount_uploader :image, AvatarUploader
end
