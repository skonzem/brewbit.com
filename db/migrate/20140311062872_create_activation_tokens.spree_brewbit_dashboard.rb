# This migration comes from spree_brewbit_dashboard (originally 20130601031049)
class CreateActivationTokens < ActiveRecord::Migration
  def change
    create_table :activation_tokens do |t|
      t.string :token
      t.string :device

      t.timestamps
    end

    add_index :activation_tokens, :token, unique: true
  end
end
