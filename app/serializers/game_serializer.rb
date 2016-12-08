class GameSerializer < ActiveModel::Serializer
  attributes :id, :lvl, :score
  has_one :user

  def editable
    scope == object.user
  end
end
