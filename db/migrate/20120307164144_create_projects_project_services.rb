class CreateProjectsProjectServices < ActiveRecord::Migration
  def up
    create_table :projects_project_services, :id => false do |t|
      t.references :project
      t.references :project_service
    end
  end

  def down
    drop_table :projects_project_services
  end
end
