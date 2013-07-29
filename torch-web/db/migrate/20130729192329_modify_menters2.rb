class ModifyMenters2 < ActiveRecord::Migration
  def change
  	add_column :menters, :about, :string
  	add_column :menters, :catch_copy, :string
  end
end
