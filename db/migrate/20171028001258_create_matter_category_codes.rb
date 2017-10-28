class CreateMatterCategoryCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :matter_category_codes do |t|
      t.references :category_code, foreign_key: true
      t.references :matter_category, foreign_key: true

      t.timestamps
    end
  end
end
