class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.date :added_date
      t.string :added_by
      t.date :modified_date
      t.string :modified_by
      t.references :employee_status, foreign_key: true
      t.references :location, foreign_key: true
      t.references :employee_type, foreign_key: true

      t.timestamps
    end
  end
end
