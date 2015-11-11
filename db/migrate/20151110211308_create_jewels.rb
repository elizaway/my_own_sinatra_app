class CreateJewels < ActiveRecord::Migration
  def change
    create_table :jewels do |t|
      t.string   :mineral, null: false
      t.integer   :facets, null: false
      t.string   :location, null: false

      t.timestamps null: false
    end
  end
end
