class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string     :name, index: true , null: false
      t.integer    :price, null: false
      t.text       :description
      t.string     :condition, null: false
      t.string     :size
      t.integer    :shipping_date, null: false
      t.integer    :shipping_fee, null: false
      t.string     :shipping_way, null: false
      t.string     :shipping_from, null: false
      t.references :user, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true
      t.references :bottom_category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
