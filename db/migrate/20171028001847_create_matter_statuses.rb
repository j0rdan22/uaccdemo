class CreateMatterStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :matter_statuses do |t|
      t.string :status_description

      t.timestamps
    end
  end
end
