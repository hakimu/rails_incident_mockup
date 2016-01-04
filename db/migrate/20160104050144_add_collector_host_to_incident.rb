class AddCollectorHostToIncident < ActiveRecord::Migration
  def change
    add_column :incidents, :collector_host, :string
  end
end
