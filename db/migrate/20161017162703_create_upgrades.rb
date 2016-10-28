class CreateUpgrades < ActiveRecord::Migration
  def change
    create_table :upgrades do |t|
      t.date :upgrade_date
    end
  end
end
