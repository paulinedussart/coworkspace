class AddColumnToOwner < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :name, :string
    add_column :owners, :siret, :string
    add_column :owners, :phone, :string
  end
end
