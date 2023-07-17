class Goal < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :start_date, presence: true

  belongs_to :user
end
