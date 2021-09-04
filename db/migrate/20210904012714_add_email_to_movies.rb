class AddEmailToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :stars, :string
    add_column :movies, :director, :string
    add_column :movies, :genres, :string
    add_column :movies, :runtime, :string
  end
end
