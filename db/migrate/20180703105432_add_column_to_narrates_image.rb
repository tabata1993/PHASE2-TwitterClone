class AddColumnToNarratesImage < ActiveRecord::Migration[5.1]
  def change
    add_column :narrates, :image, :text
  end
end
