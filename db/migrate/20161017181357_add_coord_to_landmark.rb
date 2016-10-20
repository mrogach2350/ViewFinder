class AddCoordToLandmark < ActiveRecord::Migration[5.0]
  def change
    add_column :landmarks, :lat, :decimal
    add_column :landmarks, :long, :decimal
  end
end
