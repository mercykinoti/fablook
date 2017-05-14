class Style < ApplicationRecord

  has_many :choices
  validates_presence_of :question
end
