class AddClientToUsers < ActiveRecord::Migration
  def change
    add_column :users, :client, :boolean, :default => false

  end
end
