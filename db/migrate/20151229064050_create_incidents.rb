class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :component
      t.string :collector
      t.string :shard
      t.string :beacon
      t.string :description
      t.string :message
      t.string :impact
      t.integer :severity

      t.timestamps
    end
  end
end
