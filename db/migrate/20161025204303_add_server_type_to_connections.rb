class AddServerTypeToConnections < ActiveRecord::Migration
  def change
    add_column :connections, :server_type, :string
  end
end
