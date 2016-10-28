class AddVpnAddressToConnections < ActiveRecord::Migration
  def change
    add_column :connections, :vpn_address, :string
  end
end
