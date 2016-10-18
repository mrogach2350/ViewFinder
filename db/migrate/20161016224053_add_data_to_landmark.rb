class AddDataToLandmark < ActiveRecord::Migration[5.0]
  def change
    add_column :landmarks, :address, :string
    add_column :landmarks, :coordinates, :string
    add_column :landmarks, :url, :string
  end
end
