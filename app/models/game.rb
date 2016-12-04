class Game < ActiveRecord::Base
  belongs_to :user
  def initialize(game_params)
    super
    self.score = 0
  end
  #validates :lvl, presence: true
end
