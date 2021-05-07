class RemoveTimeFromAppointments < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointments, :time, :time
  end
end
