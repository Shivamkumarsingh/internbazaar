class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :student, index: true, foreign_key: true
      t.string :title
      t.string :occupation
      t.date :from
      t.date :to
      t.string :project_url
      t.string :description

      t.timestamps null: false
    end
  end
end
