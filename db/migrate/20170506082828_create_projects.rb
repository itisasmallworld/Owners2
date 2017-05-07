class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :area, null: false
      t.integer :price, null: false
      t.string :title, null: false
      t.string :main_image, null: false
      t.text :main_content, null: false
      t.text :sub_content, null: false
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.integer :user_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
