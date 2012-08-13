class CreateLink1s < ActiveRecord::Migration
  def change
    create_table :link1s do |t|
      t.integer :contact_id
      t.integer :category_id

      t.timestamps
    end
    add_index :link1s, :contact_id
    add_index :link1s, :category_id 
  end
end
