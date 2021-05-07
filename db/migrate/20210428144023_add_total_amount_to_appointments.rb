class AddTotalAmountToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :total_amount, :integer
  end
end
