class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :applyings
  has_many :schools, through: :applyings
end
