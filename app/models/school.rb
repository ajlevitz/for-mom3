class School < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 2 }

  has_many :applyings
  has_many :users, through: :applyings

  has_many :prompts
end
