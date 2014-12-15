class CreateEpics < ActiveRecord::Migration
  def change
    create_table :epics do |t|
      t.date :rpt_date
      t.string :epic_key
      t.string :effort_tracking
      t.string :epic_name
      t.string :epic_component
      t.integer :effort_original
      t.integer :effort_remaining
      t.integer :effort_spent
      t.integer :effort_changed
      t.string :epic_reporter
      t.string :epic_type
      t.string :epic_assignee
      t.string :epic_status

      t.timestamps
    end
  end
end
