class CreateProgramings < ActiveRecord::Migration[7.1]
  def change
    create_table :programings do |t|
      t.string :day
      t.references :schedule, null: false, foreign_key: true

      t.timestamps
    end
  end
end
