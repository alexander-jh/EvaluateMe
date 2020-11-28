class Course < ApplicationRecord
  has_many :groups
  has_many :incourses
  has_many :users, through: :incourses
  has_many :adminofs
  has_many :users, through: :adminofs
  validates :course_id, presence: true, uniqueness: true
end
