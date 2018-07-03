class RemoveColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :user_image, :text
  end
end
