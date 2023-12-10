class RenameTypeInSocials < ActiveRecord::Migration[7.1]
  def change
    rename_column :socials, :type, :social_type
  end
end
