class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :phone_number
      t.string :message
      t.timestamps
    end
  end
end
