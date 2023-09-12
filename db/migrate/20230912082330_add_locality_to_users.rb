class AddLocalityToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users,:locality,:string
  end
end
