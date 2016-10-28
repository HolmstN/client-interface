class AddInstructionsToConnections < ActiveRecord::Migration
  def change
    add_column :connections, :instructions, :text
  end
end
