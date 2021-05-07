class DropAppointmentsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :appointments
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
