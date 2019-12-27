class AddSeatToTheatres < ActiveRecord::Migration[6.0]
  def change
    add_column :theatres, :seat, :integer
  end
end
