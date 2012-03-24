class CreateRequirementPriorities < ActiveRecord::Migration
  def change
    create_table :requirement_priorities do |t|
      t.string :name
      t.string :abbreviation
      t.text :description

      t.timestamps
    end
  end
end
