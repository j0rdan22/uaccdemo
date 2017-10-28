class CreateMatters < ActiveRecord::Migration[5.1]
  def change
    create_table :matters do |t|
      t.date :reported_date
      t.date :end_date
      t.date :added_date
      t.string :added_by
      t.date :modified_date
      t.string :modified_by
      t.string :comment
      t.references :matter_type, foreign_key: true
      t.references :matter_status, foreign_key: true
      t.references :matter_source, foreign_key: true
      t.references :matter_category, foreign_key: true
      t.references :resolution_code, foreign_key: true
      t.references :urgency_level, foreign_key: true
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
