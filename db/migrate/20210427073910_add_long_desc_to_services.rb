class AddLongDescToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :long_desc, :string
  end
end
