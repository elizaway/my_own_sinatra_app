class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name, null: false
      t.integer :acquisition_date, null: false

      t.timestamps null: false
    end
  end
end

