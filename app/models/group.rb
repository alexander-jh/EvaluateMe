class Group < ApplicationRecord
  belongs_to :course
  has_many :ingroups, dependent: :destroy
  has_many :users, through: :ingroups
  has_many :evaluations, dependent: :destroy
end
