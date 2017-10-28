class CreateParties < ActiveRecord::Migration[5.1]
  def change
    create_table :parties do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.references :state, foreign_key: true
      t.string :zip_code
      t.string :phone_number
      t.string :email
      t.string :last_four_ssn
      t.date :added_date
      t.string :added_by
      t.date :modified_date
      t.string :modified_by
      t.references :party_type, foreign_key: true

      t.timestamps
    end
  end
end
