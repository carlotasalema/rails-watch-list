class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 6 }, presence: true
  validates :list, uniqueness: { scope: :movie }
  has_one_attached :photo
end
