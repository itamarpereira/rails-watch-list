class Movie < ApplicationRecord
  has_many :bookmarks, -> { where active: true },dependent: :destroy
  has_many :lists, through: :bookmarks

  validates :title, presence: true
  validates :overview, presence: true
  validates :title, uniqueness: true
  validates :overview, uniqueness: true
end
