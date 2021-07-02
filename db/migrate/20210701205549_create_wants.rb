class CreateWants < ActiveRecord::Migration[6.1]
  def change
    create_table :wants do |t|
      t.integer :user_id
      t.integer :course_id
      t.integer :permission

      t.timestamps
    end
  end
end
