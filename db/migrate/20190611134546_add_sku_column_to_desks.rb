class AddSkuColumnToDesks < ActiveRecord::Migration[5.2]
  def change
    add_column :desks, :sku, :string
  end
end
