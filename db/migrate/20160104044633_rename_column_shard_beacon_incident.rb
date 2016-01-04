class RenameColumnShardBeaconIncident < ActiveRecord::Migration
  def change
  	rename_column :incidents, :shard, :agentdb
  	rename_column :incidents, :beacon, :timeslice
  end
end
