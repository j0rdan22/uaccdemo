class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :description
      t.string :address
      t.string :city
      t.string :zip_code
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
