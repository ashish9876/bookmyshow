class AddTheatreIdToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :theatre_id, :integer
  end
end
