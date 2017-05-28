class Style < ApplicationRecord
  belongs_to :quiz
  has_many :answers
  has_many :choices
  validates_presence_of :question
end
