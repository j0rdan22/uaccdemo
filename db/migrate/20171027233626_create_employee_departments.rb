class CreateEmployeeDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_departments do |t|
      t.references :employee, foreign_key: true
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
