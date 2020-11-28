class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ingroups
  has_many :groups, through: :ingroups
  has_many :evaluations
  has_many :incourses
  has_many :courses, through: :incourses
  has_many :adminsof
  has_many :courses, through: :adminsof
  has_many :incompletes
end
