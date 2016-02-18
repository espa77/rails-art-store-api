class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :bio
  has_many :pieces
  has_many :exhibitions, through: :pieces
end
