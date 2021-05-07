class DropSelectedServicesTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :selected_services
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
