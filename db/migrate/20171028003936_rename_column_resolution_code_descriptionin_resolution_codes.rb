class RenameColumnResolutionCodeDescriptioninResolutionCodes < ActiveRecord::Migration[5.1]
  def change

    rename_column :resolution_codes, :resolution_code__description, :resolution_code_description
  end
end
