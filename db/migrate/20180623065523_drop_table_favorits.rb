class DropTableFavorits < ActiveRecord::Migration[5.1]
  def change
    drop_table :favorits
  end
end
