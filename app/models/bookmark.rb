class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, :length => { :minimum => 6 }
  validates :movie, uniqueness: { scope: :list, message: "movie cant be in the same list twice" }
end
