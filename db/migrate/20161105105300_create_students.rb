class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :address
      t.string :contact
      t.string :skills
      t.string :gender

      t.timestamps null: false
    end
  end
end
