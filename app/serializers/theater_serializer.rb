class TheaterSerializer < ActiveModel::Serializer
  attributes :id, :name, :adress, :city, :state, :phone, :image, :username
  has_many :movies
  belongs_to :user

  def username
    self.object.user.username
  end
end

