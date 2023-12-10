class CreateSocials < ActiveRecord::Migration[7.1]
  def change
    create_table :socials do |t|
      t.string :type
      t.string :url_socials
      t.references :radio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
