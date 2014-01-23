class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.references :well, index: true
      t.datetime :time
      t.decimal :pressure

      t.timestamps
    end
  end
end
