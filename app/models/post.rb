class Post < ApplicationRecord
  validates :name, presence: true
  validates :math, presence: true
  validates :english, presence: true
  validates :science, presence: true
  validates :time, presence: true
  validates :date, presence: true
  validates :period, presence: true
end
