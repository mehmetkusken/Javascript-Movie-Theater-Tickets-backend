class TheaterSerializer < ActiveModel::Serializer
  attributes :id, :name, :adress, :city, :state, :phone, :image
end
