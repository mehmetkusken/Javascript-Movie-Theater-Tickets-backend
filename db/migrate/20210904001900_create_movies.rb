class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :movie_name
      t.string :release_date
      t.string :movie_detail
      t.string :movie_image

      t.timestamps
    end
  end
end
