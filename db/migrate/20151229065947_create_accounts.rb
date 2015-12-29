class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :number
      t.integer :priority
      t.string :name
      t.string :owner
      t.string :collector
      t.string :shard
      t.string :beacon
      t.datetime :created
      t.datetime :expiration

      t.timestamps
    end
  end
end
