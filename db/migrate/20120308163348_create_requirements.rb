class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.integer :project_id
      t.string :name
      t.text :detail
      t.integer :requirement_type_id
      t.integer :requirement_priority_id
      t.string :initiator
      t.boolean :approved

      t.timestamps
    end
  end
end
