class MovieSerializer < ActiveModel::Serializer
  attributes :id, :movie_name, :release_date, :movie_detail, :movie_image, :stars, :director, :genres, :runtime
  belongs_to :theater
end
