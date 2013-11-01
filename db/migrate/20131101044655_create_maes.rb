class CreateMaes < ActiveRecord::Migration
  def change
    create_table :maes do |t|
      t.string :image
      t.integer :kumo_id

      t.timestamps
    end
  end
end
