class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name, null: false  #facebook認証用
      t.string :provider #facebook認証用
      t.string :uid #facebook認証用

      t.timestamps
    end
  end
end
