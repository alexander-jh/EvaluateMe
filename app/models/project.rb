class Project < ApplicationRecord
  belongs_to :course
  has_many :users, through: :course
  has_many :incompletes
  has_many :evaluations
end
