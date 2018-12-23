class CreateBottomCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :bottom_categories do |t|
      t.string     :name, null: false
      t.references :mid_categorie, null: false, foreign_key: true
      t.timestamps
    end
  end
end
