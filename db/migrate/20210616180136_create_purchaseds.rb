class CreatePurchaseds < ActiveRecord::Migration[6.1]
  def change
    create_table :purchaseds do |t|
      t.integer :course_id
      t.integer :motorcycle_id
      t.integer :user_id

      t.timestamps
    end
  end
end
