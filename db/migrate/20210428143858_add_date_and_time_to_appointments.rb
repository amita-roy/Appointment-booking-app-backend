class AddDateAndTimeToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :date, :string
    add_column :appointments, :time, :string
  end
end
