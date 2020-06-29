class RemoveAmenitiesFromFlats < ActiveRecord::Migration[6.0]
  def change
    remove_column :flats, :amenities, :string
  end
end
