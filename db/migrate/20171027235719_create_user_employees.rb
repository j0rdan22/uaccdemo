class CreateUserEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :user_employees do |t|
      t.string :user_name
      t.string :password
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
