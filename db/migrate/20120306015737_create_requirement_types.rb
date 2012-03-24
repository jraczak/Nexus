class CreateRequirementTypes < ActiveRecord::Migration
  def change
    create_table :requirement_types do |t|
      t.string :name
      t.text :short_description

      t.timestamps
    end
  end
end
