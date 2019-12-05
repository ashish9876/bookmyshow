class CreateTheatres < ActiveRecord::Migration[6.0]
  def change
    create_table :theatres do |t|
      t.string :name
      t.string :movie_name
      t.integer :show_time

      t.timestamps
    end
  end
end
