class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.bigint :user_id, foreign_key: true
      t.references :goal, foreign_key: true

      t.timestamps
    end
  end
end
