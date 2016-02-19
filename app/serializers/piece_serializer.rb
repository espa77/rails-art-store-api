class PieceSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :title, :style, :subject, :medium, :size, :price, :artist_id, :exhibition_id
  # has_one :artist
  # has_one :exhibition
end
