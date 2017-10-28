class CreateUrgencyLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :urgency_levels do |t|
      t.string :level_description

      t.timestamps
    end
  end
end
