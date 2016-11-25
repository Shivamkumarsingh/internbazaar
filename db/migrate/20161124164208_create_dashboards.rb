class CreateDashboards < ActiveRecord::Migration
  def change
    create_table :dashboards do |t|
    	t.references :student, index: true, foreign_key: true
    	t.references :job, index: true, foreign_key: true
      	t.date :date
      	t.string :profile
      	t.string :application_status
      t.timestamps null: false
    end
  end
end
