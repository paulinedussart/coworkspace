class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.string :name
      t.text :description
      t.string :phone
      t.string :address
      t.string :website
      t.json :opening_hours
      t.string :photo
      t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
