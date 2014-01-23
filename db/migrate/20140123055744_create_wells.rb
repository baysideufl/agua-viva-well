class CreateWells < ActiveRecord::Migration
  def change
    create_table :wells do |t|
      t.references :project, index: true
      t.decimal :longitude
      t.decimal :latitude
      t.string :name
      t.text :description
      t.float :pipe_diameter
      t.float :max_safe_pressure

      t.timestamps
    end
  end
end
