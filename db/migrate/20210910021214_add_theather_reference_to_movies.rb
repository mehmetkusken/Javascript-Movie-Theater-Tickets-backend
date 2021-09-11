class AddTheatherReferenceToMovies < ActiveRecord::Migration[6.1]
  def change
    add_reference :movies, :theater, null: false, foreign_key: true
  end
end
