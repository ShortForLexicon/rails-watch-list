class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, present: true
  validates :overview, present: true
  validates :poster_url, present: true
  validates :rating, present: true

  validates :title, uniqueness: true
  validates :overview, uniqueness: true
end
