class Movie < ApplicationRecord
  has_many :bookmarks, foreign_key: "movie_id"
  validates :title, :overview, presence: true
  validates :title, :overview, uniqueness: true
end
