class Evaluation < ApplicationRecord
  validates :user_id, uniqueness: {scope: :project_id}
  belongs_to :project
  belongs_to :user
end
