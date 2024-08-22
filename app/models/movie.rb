class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  before_destroy :ensure

  private

  def ensure
    if bookmarks.empty?
      errors.add(:base)
    end
  end
end
