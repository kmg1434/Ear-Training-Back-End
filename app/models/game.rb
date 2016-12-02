class Game < ActiveRecord::Base
  belongs_to :user
  #validates :lvl, presence: true
end
