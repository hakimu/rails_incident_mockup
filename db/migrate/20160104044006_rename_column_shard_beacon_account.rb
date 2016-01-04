class RenameColumnShardBeaconAccount < ActiveRecord::Migration
  def change
  	rename_column :accounts, :shard, :agentdb
  	rename_column :accounts, :beacon, :timeslice
  end
end
