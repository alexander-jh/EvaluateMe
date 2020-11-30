class Group < ApplicationRecord
  belongs_to :course
  has_many :ingroups
  has_many :users, through: :ingroups
end
