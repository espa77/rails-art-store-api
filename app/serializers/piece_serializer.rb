class PieceSerializer < ActiveModel::Serializer
  attributes :id, :title, :style, :subject, :medium, :size, :price
  has_one :artist
  has_one :exhibition
end
