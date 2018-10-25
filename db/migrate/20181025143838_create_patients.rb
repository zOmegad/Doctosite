class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
