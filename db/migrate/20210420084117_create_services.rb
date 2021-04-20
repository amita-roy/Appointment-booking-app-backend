class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name
      t.integer :price
      t.string :offer
      t.string :description
      t.integer :duration
      t.references :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
