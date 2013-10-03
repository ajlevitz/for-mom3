class Response < ActiveRecord::Base
  validates :comments, presence: true

  belongs_to :prompt
  belongs_to :user
end
