class CreateReflections < ActiveRecord::Migration[7.0]
  def change
    create_table :reflections do |t|
      # add_reference :reflections, :goal, foreign_key: true
      # add_column :reflections, :content, :text
      # add_column :reflections, :day_number, :integer
      
      # t.timestamps
    end
  end
end
