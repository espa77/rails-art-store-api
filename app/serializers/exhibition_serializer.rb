class ExhibitionSerializer < ActiveModel::Serializer
  attributes :id, :location
  has_many :pieces
  has_many :artists
end
