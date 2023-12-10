class CreateRadios < ActiveRecord::Migration[7.1]
  def change
    create_table :radios do |t|
      t.string :title
      t.string :url_stream
      t.string :logo
      t.string :font_type
      t.string :font_color
      t.string :player_bg_color
      t.string :menu_bg_color
      t.string :icon_color

      t.timestamps
    end
  end
end
