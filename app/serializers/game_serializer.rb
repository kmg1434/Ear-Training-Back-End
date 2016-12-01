class GameSerializer < ActiveModel::Serializer
  attributes :id, :lvl, :score
  has_one :user
end
