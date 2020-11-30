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
  has_many :adminofs
  has_many :courses, through: :adminofs
  has_many :incompletes

  def admin?
    admin
  end
end
