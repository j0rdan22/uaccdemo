class CreateResolutionCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :resolution_codes do |t|
      t.string :resolution_code__description




      t.timestamps
    end
    end
  end



