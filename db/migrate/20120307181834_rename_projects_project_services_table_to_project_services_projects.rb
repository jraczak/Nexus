class RenameProjectsProjectServicesTableToProjectServicesProjects < ActiveRecord::Migration
  def up
    rename_table(:projects_project_services, :project_services_projects)
  end

  def down
  end
end
