class CreateProjects < ActiveRecord::Migration
  def change
  	execute "CREATE TYPE billing AS ENUM('t&m', 'fixed')"
  	execute "CREATE TYPE project_status AS ENUM('poc', 'kickoff', 'completed')"
    create_table :projects do |t|
      t.string :name
      t.string :code
      t.string :description
      t.column :billing_type, "billing"
      t.date :start
      t.date :deadline
      t.date :end
      t.string :github_url
      t.column :status, "project_status"
      t.timestamps
    end
  end
end
