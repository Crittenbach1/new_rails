class Genre < ApplicationRecord
   has_many :artists
   has_many :tabs, through: :artists
   validates :name, presence: true
   validates :name, uniqueness: true


end
