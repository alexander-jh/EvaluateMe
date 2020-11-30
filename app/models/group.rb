class Group < ApplicationRecord
  belongs_to :course
  has_many :projects
  has_many :ingroups
  has_many :incompletes, through: :projects
  has_many :users
end
