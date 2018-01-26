class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :startTime
      t.datetime :endTime
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
