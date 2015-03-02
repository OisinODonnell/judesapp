class CreateAttends < ActiveRecord::Migration
  def change
    create_table :attends do |t|
      t.string :player_id
      t.string :training_event_id
      t.boolean :attendance
      t.string :excuse
      t.timestamps
    end
  end
end
