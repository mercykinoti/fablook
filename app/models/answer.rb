class Answer < ApplicationRecord
  belongs_to :style
  belongs_to :user

  has_and_belongs_to_many :choices
end
