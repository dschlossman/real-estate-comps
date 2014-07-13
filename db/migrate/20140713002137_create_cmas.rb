class CreateCmas < ActiveRecord::Migration
  def change
    create_table :cmas do |t|
      t.string :name

      t.timestamps
    end
  end
end
