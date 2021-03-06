# This migration comes from spree_brewbit_dashboard (originally 20121223054315)
class CreateUsersTable < ActiveRecord::Migration
  def self.up
    create_table :users  do |t|
      t.timestamps :null => false
      t.string :email, :null => false
      t.string :encrypted_password, :limit => 128, :null => false
      t.string :confirmation_token, :limit => 128
      t.string :remember_token, :limit => 128, :null => false
    end

    add_index :users, :email
    add_index :users, :remember_token
  end

  def self.down
    drop_table :users
  end
end
