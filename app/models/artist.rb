class Artist < ActiveRecord::Base
  has_many :pieces
  has_many :exhibitions
end
