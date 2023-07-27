class Goal < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true, exclusion: { in: [''] }
  validates :start_date, presence: true

  belongs_to :user
  has_many :reflections, dependent: :destroy

  has_many :likes, dependent: :destroy

  def likes_count
    likes.count
  end


  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
end
