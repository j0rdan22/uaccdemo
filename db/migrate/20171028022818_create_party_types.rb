class CreatePartyTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :party_types do |t|
      t.string :type_description

      t.timestamps
    end
  end
end
