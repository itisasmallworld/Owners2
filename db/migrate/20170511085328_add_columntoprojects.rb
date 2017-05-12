class AddColumntoprojects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :url, :string
  end
end
