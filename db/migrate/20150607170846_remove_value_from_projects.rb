class RemoveValueFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :startdate, :datetime
  end
end
