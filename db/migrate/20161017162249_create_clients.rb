class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :client_code
      t.boolean :type_2
      t.boolean :crownweb
      t.boolean :replication
      t.boolean :encryption
      t.boolean :mobile
      t.boolean :mobile
      t.boolean :clinical_dashboard
      t.boolean :financial_dashboard
      t.text :comments
    end
  end
end
