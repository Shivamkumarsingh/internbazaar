class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.references :student, index: true, foreign_key: true
      t.string :school
      t.date :from
      t.date :to
      t.string :degree
      t.string :field_of_study
      t.string :grade
      t.string :description

      t.timestamps null: false
    end
  end
end
