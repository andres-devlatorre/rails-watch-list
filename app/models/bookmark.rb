class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, presence: true, length: { minimum: 6, message: 'minimo 6 caracteres' }
  validates :movie_id, uniqueness: { scope: :list_id, message: 'movie already in list' }
end
