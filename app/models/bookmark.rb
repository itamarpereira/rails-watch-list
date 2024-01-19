class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates_presence_of :movie_id, :list_id
  validates :comment, length: { minimum: 6 }    
  validates :movie, uniqueness: { scope: :list, message: "Movie & List pairings should be unique" }

end
