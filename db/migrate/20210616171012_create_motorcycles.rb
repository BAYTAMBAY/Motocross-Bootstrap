class CreateMotorcycles < ActiveRecord::Migration[6.1]
  def change
    create_table :motorcycles do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :picture_id
      t.integer :status
      t.integer :model_id
      t.integer :admin_id

      t.timestamps
    end
  end
end
