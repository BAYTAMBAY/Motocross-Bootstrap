class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :password
      t.integer :type

      t.timestamps
    end
  end
end
