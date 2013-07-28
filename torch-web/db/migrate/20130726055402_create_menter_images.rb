class CreateMenterImages < ActiveRecord::Migration
  def change
    create_table :menter_images do |t|
    	t.references :menter, null: false
    	t.binary :data
    	t.string :content_type
      t.timestamps
    end

    add_index :menter_images, :menter_id
  end
end
