class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.date :startdate

      t.timestamps null: false
    end
  end
end
