class List < ApplicationRecord
  NAMES = %w( action adventure comedy drama fantasy horror musicals mystery romance science-fiction sports thriller Western)
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: true
end
