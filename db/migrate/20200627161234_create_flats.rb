class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :amenities
      t.integer :number_of_guest
      t.integer :price_per_night
      t.integer :number_of_bedroom
      t.integer :number_of_bathroom
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
