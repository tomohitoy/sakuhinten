class CreateAtos < ActiveRecord::Migration
  def change
    create_table :atos do |t|
      t.string :image
      t.integer :kumo_id

      t.timestamps
    end
  end
end
