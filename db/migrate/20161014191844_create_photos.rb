class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :caption
      t.string :time_of_day
      t.string :equipment
      t.belongs_to :user
      t.belongs_to :landmark
      t.timestamps
    end
  end
end
