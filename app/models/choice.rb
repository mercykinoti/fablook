class Choice < ApplicationRecord
  belongs_to :style

  validates_presence_of :answer
end
