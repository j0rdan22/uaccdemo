class CreateMatterUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :matter_updates do |t|

      t.references :update, foreign_key: true
      t.references :matter, foreign_key: true
        t.timestamps
    end
  end
end

