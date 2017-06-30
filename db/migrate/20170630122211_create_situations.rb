class CreateSituations < ActiveRecord::Migration[5.0]
  def change
    create_table :situations do |t|
      t.string :name
      t.string :situation_type

      t.timestamps
    end
  end
end
