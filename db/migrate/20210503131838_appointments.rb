class Appointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true, on_delete: :cascade
      t.references :service, null: false, foreign_key: true, on_delete: :cascade
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
