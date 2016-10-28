class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.integer :service_pack
      t.integer :patch_number
    end
  end
end
