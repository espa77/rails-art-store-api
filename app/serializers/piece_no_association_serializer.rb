class PieceNoAssociationSerializer < ActiveModel::Serializer
  attributes :id, :title, :style, :subject, :medium, :size, :price, :artist_id
end
