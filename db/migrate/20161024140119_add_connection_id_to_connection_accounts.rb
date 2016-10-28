class AddConnectionIdToConnectionAccounts < ActiveRecord::Migration
  def change
    add_reference :connection_accounts, :connection, foreign_key: true
  end
end
