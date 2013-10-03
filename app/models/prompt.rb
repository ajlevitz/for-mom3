class Prompt < ActiveRecord::Base
  validates :question, presence: true

  belongs_to :school
  has_many :responses
end
