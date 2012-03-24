class RenameShortDescriptionToDescription < ActiveRecord::Migration
  def up
    rename_column :requirement_types, :short_description, :description
  end

  def down
    rename_column :requirement_types, :short_description, :description
  end
end
