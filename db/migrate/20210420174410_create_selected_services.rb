class CreateSelectedServices < ActiveRecord::Migration[6.1]
  def change
    create_table :selected_services do |t|
      t.references :appointment, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
