class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :profile
      t.integer :duration
      t.integer :stipend
      t.datetime :start_date
      t.string :type
      t.datetime :apply_by
      t.references :student, index: true, foreign_key: true
      t.references :brand, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
