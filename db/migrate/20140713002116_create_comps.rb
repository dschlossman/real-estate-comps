class CreateComps < ActiveRecord::Migration
  def change
    create_table :comps do |t|
      t.string :name
      t.string :address
      t.string :date
      t.integer :price

      t.timestamps
    end
  end
end
