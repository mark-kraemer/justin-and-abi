class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.boolean :attending
      t.text :comments
      t.integer :head_count

      t.timestamps
    end
    add_index :guests, :attending
  end
end
