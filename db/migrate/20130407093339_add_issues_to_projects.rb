class AddIssuesToProjects < ActiveRecord::Migration
  def self.up
    add_column :issues, :project_id, :integer
  end
  def self.down
  	remove_column :issues, :project_id
  end
end
