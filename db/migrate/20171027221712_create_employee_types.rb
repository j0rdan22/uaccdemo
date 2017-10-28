class CreateEmployeeTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_types do |t|
      t.string :type_description

      t.timestamps
    end
  end
end
