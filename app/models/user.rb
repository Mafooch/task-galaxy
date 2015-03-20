class User < ActiveRecord::Base
  has_many :tasks
  has_many :assignments
  has_many :projects, through: :assignments

  validates :email,
    presence: true,
    uniqueness: true
  validates :password,
    presence: true
end
