class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_id
      t.string :name
      t.text :content
      t.integer :jinkaku
      t.integer :kumo_id

      t.timestamps
    end
  end
end
