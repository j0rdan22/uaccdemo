class CreateMatterCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :matter_categories do |t|
      t.string :category_description

      t.timestamps
    end
  end
end
