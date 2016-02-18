class PieceSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :title, :style, :subject, :medium, :size, :price
  has_one :artist
  has_one :exhibition
end
