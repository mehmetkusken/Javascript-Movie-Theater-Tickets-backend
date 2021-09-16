class AddUserToTheater < ActiveRecord::Migration[6.1]
  def change
    add_reference :theaters, :user, null: false, foreign_key: true
  end
end
