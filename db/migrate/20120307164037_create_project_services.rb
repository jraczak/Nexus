class CreateProjectServices < ActiveRecord::Migration
  def change
    create_table :project_services do |t|
      t.string :name

      t.timestamps
    end
  end
end
