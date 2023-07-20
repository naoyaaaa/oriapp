class CreateReflections < ActiveRecord::Migration[6.0]
  def change
    create_table :reflections do |t|
      t.references :goal, foreign_key: true
      t.integer :day_number
      t.text :content

      t.timestamps
    end
  end
end
