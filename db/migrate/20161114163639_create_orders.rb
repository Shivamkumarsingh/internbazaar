class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :student, index: true, foreign_key: true
        t.references :job, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
