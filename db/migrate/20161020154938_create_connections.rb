class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.boolean :current
      t.boolean :vpn
      t.boolean :lock_out
      t.string :ip_address, index: true
      t.references :client, foreign_key: true
      t.timestamps null: false
    end
  end
end
