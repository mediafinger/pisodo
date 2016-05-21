class ChangeColumnsOfPisos < ActiveRecord::Migration
  def change
    add_column :pisos, :pet_friendly, :boolean

    change_column :pisos, :picture_one, :text
    change_column :pisos, :picture_two, :text

    rename_column :pisos, :first_noticed, :noticed_at
    rename_column :pisos, :visited, :visited_at
    add_column :pisos, :visited, :boolean
  end
end
