class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :user_id
      t.integer :project_id
      t.text :description

      t.timestamps null: false
    end
  end
end
