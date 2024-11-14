class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy, foreign_key: "list_id"
  has_many :movies, through: :bookmarks
  validates :name, presence: true
  validates :name, uniqueness: true
end
