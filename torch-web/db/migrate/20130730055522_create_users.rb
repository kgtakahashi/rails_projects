class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name, null: false
    	t.integer :age
    	t.string :profile
    	t.boolean :student, default: false
    	t.string :hashed_password

      t.timestamps
    end
  end
end
