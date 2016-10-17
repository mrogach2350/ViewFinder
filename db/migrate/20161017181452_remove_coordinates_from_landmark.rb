class RemoveCoordinatesFromLandmark < ActiveRecord::Migration[5.0]
  def change
    remove_column :landmarks, :coordinates, :string
  end
end
