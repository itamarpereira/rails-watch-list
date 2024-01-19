class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true
end
