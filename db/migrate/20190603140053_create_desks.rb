class CreateDesks < ActiveRecord::Migration[5.2]
  def change
    create_table :desks do |t|
      t.integer :price_per_day
      t.references :space, foreign_key: true

      t.timestamps
    end
  end
end
