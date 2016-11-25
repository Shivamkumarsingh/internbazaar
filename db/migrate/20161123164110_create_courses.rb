class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
    t.references :student, index: true, foreign_key: true
      t.string :course_name
      t.string :course_code
      t.string :associated_with

      t.timestamps null: false
    end
  end
end
