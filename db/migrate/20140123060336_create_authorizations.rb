class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :authorizations do |t|
      t.references :user, index: true
      t.references :project, index: true
      t.integer :access_level

      t.timestamps
    end
  end
end
