class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.references :user, foreign_key: true, null: false
      t.string :title
      t.text :description
      t.string :category
      t.date :start_date
      t.timestamps

    end
  end
end
