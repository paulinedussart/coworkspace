class AddAvatarToOwner < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :avatar, :string
  end
end
