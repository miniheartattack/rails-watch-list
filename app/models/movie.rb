class Movie < ApplicationRecord
has_many :bookmarks
validates :title, uniqueness: true, presence: true
validates :rating, numericality: { only_integer: boolean_value }
validates :bookmark, dependent: :destroy
end
