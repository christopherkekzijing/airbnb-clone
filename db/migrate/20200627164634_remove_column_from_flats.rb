class RemoveColumnFromFlats < ActiveRecord::Migration[6.0]
  def change
    remove_column :flats, :description, :string
  end
end
