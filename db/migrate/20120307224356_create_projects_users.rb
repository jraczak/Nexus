class CreateProjectsUsers < ActiveRecord::Migration
  def up
    create_table :projects_users, :id => false do |t|
      t.references :project
      t.references :user
    end
  end

  def down
    drop_table :projects_users
  end
end
