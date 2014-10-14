class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.integer :project_id
      t.integer :user_id
      t.datetime :dtperformed
      t.references :project, index: true
      t.references :user, index: true
      t.integer :hours

      t.timestamps
    end
  end
end
