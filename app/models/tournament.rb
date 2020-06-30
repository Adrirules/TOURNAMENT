class Tournament < ApplicationRecord

  has_one_attached :photo
  has_many :teams

  validates :name, presence: true
  validates :start_tournament, presence: true
  validates :end_tournament, presence: true
  validates :photo, presence: true
  validates :activity, presence: true

end
