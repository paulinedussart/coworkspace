class CreateSpaceServices < ActiveRecord::Migration[5.2]
  def change
    create_table :space_services do |t|
      t.references :space, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
