class Reflection < ApplicationRecord
  belongs_to :goal

  validates :content, presence: true
  validates :day_number, presence: { message: "選択してください" }
end
