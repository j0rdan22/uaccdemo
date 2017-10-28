class CreatePartyMatters < ActiveRecord::Migration[5.1]
  def change
    create_table :party_matters do |t|
      t.references :matter, foreign_key: true
      t.references :party, foreign_key: true

      t.timestamps
    end
  end
end
