class Course < ApplicationRecord
  has_many :groups
  has_many :incourses
  has_many :users, through: :incourses
  validates :course_id, presence: true, uniqueness: true
end
