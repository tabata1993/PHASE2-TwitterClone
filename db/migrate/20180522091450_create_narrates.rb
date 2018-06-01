class CreateNarrates < ActiveRecord::Migration[5.1]
  def change
    create_table :narrates do |t|
      t.text :content
    end
  end
end
