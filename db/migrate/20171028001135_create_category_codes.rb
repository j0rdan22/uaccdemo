class CreateCategoryCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :category_codes do |t|
      t.string :code_description

      t.timestamps
    end
  end
end
