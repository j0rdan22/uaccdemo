class CreateMatterSources < ActiveRecord::Migration[5.1]
  def change
    create_table :matter_sources do |t|
      t.string :source_description

      t.timestamps
    end
  end
end
