class AddMonetizeToDesk < ActiveRecord::Migration[5.2]
  def change
    remove_column :desks, :price_per_day
    add_monetize :desks, :price_per_day, currency: { present: false }
  end
end
