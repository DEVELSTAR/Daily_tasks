class Post < ApplicationRecord
  # validates :math, presence: true
  # validates :english, presence: true
  # validates :science, presence: true
  # validates :period, presence: true
  belongs_to :user
end
