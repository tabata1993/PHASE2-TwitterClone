class AdduserId < ActiveRecord::Migration[5.1]
  def change
    add_column :narrates, :user_id, :integer
  end
end
