class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :description
      t.integer :price
      t.integer :admin_id

      t.timestamps
    end
  end
end
