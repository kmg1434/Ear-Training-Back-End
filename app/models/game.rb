class Game < ActiveRecord::Base
  belongs_to :user
  def initialize(game_params)
    super
    self.score = 0
  end
  validates :lvl, numericality: true
  validates :score, numericality: true
end
