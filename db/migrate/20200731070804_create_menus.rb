class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.string :price
      t.text :image
      t.string :calorie
      t.string :protein
      t.string :fat
      t.string :carbo
      t.timestamps
    end
  end
end
