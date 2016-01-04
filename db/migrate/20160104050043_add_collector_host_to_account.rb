class AddCollectorHostToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :collector_host, :string
  end
end
