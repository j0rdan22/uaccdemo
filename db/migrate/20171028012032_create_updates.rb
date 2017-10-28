class CreateUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :updates do |t|
      t.string :update_description

      t.timestamps
    end
  end
end
