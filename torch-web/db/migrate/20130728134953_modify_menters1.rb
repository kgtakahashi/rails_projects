class ModifyMenters1 < ActiveRecord::Migration
  def change
  	add_column :menters, :hashed_password, :string
  end
end
