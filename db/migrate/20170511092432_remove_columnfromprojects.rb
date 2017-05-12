class RemoveColumnfromprojects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :url, :string
  end
end
