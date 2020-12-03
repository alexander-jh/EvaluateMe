class Project < ApplicationRecord
  belongs_to :course
  has_many :incompletes, dependent: :destroy
  has_many :evaluations, dependent: :destroy
  has_many :completes, dependent: :destroy
end
