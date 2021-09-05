class CreateTheaters < ActiveRecord::Migration[6.1]
  def change
    create_table :theaters do |t|
      t.string :name
      t.string :adress
      t.string :city
      t.string :state
      t.string :phone
      t.string :image

      t.timestamps
    end
  end
end
