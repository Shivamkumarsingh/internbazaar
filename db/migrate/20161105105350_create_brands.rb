class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :location
      t.string :type

      t.timestamps null: false
    end
  end
end
