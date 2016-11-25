class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.references :student, index: true, foreign_key: true
      t.string :certificate_name
      t.string :certificate_authority
      t.string :license_no
      t.string :certification_url
      t.date :certification_date

      t.timestamps null: false
    end
  end
end
