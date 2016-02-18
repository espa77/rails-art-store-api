class PieceSerializer < ActiveModel::Serializer
  attributes :id, :title, :style, :subject, :medium, :size, :price
  belongs_to :artist
  has_many :exhibitions
end
