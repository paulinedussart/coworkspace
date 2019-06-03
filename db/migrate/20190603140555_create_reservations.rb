class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.date :arrival_date
      t.date :departure_date
      t.string :status
      t.references :user, foreign_key: true
      t.references :desk, foreign_key: true

      t.timestamps
    end
  end
end
