class Evaluation < ApplicationRecord
  belongs_to :project
  has_many :users
end
