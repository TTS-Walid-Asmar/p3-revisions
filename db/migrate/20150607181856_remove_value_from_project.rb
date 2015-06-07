class RemoveValueFromProject < ActiveRecord::Migration
  def change
    remove_column :projects, :StartDate, :date
  end
end
