class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.references :student, index: true, foreign_key: true
      t.string :company_name
      t.string :title
      t.string :location
      t.date :from
      t.date :to
      t.boolean :currently_working_here
      t.string :description

      t.timestamps null: false
    end
  end
end
