class AddAbbreviationToRequirementTypes < ActiveRecord::Migration
  def change
    add_column :requirement_types, :abbreviation, :string

  end
end
