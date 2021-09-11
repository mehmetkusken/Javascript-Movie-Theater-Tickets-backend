class TheaterSerializer < ActiveModel::Serializer
  attributes :id, :name, :adress, :city, :state, :phone, :image
  has_many :movies
end
