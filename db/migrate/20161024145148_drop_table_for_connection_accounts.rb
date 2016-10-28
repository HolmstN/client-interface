class DropTableForConnectionAccounts < ActiveRecord::Migration
  def change
    drop_table :connection_accounts
    
    create_table :accounts, force: true do |t|
      t.string :username
      t.string :password
      t.string :domain
      t.references :client, foreign_key: true
      
      t.timestamps null: false
    end
  end
end