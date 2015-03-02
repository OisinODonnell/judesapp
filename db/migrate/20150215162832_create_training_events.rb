class CreateTrainingEvents < ActiveRecord::Migration
  def change
    create_table :training_events do |t|
      t.string :training_location
      t.string :training_type
      t.date :training_date
      t.integer :duration

      t.timestamps
    end
  end
end
