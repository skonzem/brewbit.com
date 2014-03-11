# This migration comes from spree_brewbit_dashboard (originally 20140103213011)
class RemoveUniqueForDeviceIdOnDeviceConnections < ActiveRecord::Migration
  def up

    # Remove unique constraint
    remove_index :device_connections, :device_id
    # Still want to index device_id
    add_index :device_connections, :device_id
  end

  def down
    remove_index :device_connections, :device_id
    add_index :device_connections, :device_id, unique: true
  end
end
