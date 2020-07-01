class Team < ApplicationRecord
 belongs_to :tournament
 has_many :users
validates :name, presence: true

end

