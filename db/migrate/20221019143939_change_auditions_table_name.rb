class ChangeAuditionsTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :auditons, :auditions
  end
end
