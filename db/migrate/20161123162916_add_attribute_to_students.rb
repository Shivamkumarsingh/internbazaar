class AddAttributeToStudents < ActiveRecord::Migration
  def change
    add_column :students, :summary, :string
    add_column :students, :dob, :date
    add_column :students, :marital_status, :string
  end
end
