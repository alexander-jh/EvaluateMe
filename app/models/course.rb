class Course < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :incourses, dependent: :destroy
  has_many :users, through: :incourses
  validates :course_id, presence: true, uniqueness: true
end
