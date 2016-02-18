class Exhibition < ActiveRecord::Base
  has_many :pieces
  has_many :artists, through: :pieces
end
