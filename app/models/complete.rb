class Complete < ApplicationRecord
  validates :user_id, uniqueness: {scope: :project_id}
  belongs_to :project
  belongs_to :user
  has_many :evaluations
  accepts_nested_attributes_for :evaluations
end
