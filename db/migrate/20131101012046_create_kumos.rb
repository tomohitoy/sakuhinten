class CreateKumos < ActiveRecord::Migration
  def change
    create_table :kumos do |t|
      t.integer :user_id
      t.string :title
      t.string :name

      t.timestamps
    end
  end
end
