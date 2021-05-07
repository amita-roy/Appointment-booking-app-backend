class AddImageToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :image, :string
  end
end
