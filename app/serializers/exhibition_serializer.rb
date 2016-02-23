class ExhibitionSerializer < ActiveModel::Serializer
  attributes :id, :location, :piece_ids, :artist_ids, :title
  # has_many :pieces
  # has_many :artists, through: :pieces
end
