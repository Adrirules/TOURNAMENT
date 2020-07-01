class Team < ApplicationRecord
  belongs_to :tournament

  validates :name, presence: true

end
