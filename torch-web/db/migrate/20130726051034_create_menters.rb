class CreateMenters < ActiveRecord::Migration
  def change
    create_table :menters do |t|
    	t.string :name, null: false
    	t.string :career
    	t.integer :rate, null: false, default: 100

      t.timestamps
    end
  end
end
