class AddMonetizeToResa < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :total_price
    add_monetize :reservations, :total_price, currency: { present: false }
  end
end
