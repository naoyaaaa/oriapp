class AddGoalToReflections < ActiveRecord::Migration[7.0]
  def change
    add_reference :reflections, :goal, foreign_key: true
    add_column :reflections, :content, :text
    add_column :reflections, :day_number, :integer
  end
end
