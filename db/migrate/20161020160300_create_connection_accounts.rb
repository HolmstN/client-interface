class CreateConnectionAccounts < ActiveRecord::Migration
  def change
    create_table :connection_accounts do |t|
      t.string :username
      t.string :password
      t.string :domain

      t.timestamps null: false
    end
    
    add_foreign_key :connection_accounts, :connections
  end
end
