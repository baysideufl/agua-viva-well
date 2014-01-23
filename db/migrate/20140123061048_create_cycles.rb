class CreateCycles < ActiveRecord::Migration
  def change
    create_table :cycles do |t|
      t.references :well, index: true
      t.datetime :start_time
      t.datetime :end_time
      t.decimal :average_pressure
      t.float :duration_unsafe

      t.timestamps
    end
  end
end
