class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title  
      t.date :event_day
      t.timestamps
    end
  end
end
