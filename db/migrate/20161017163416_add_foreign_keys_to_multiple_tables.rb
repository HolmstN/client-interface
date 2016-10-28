class AddForeignKeysToMultipleTables < ActiveRecord::Migration
  def change
    add_reference :clients, :upgrade, index: true, foreign_key: true
    add_reference :upgrades, :client, index: true, foreign_key: true
  end
end
