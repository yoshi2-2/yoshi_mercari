class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :family_name,      :string,  null: false
    add_column :users, :first_name,       :string,  null: false
    add_column :users, :family_name_kana, :string,  null: false
    add_column :users, :first_name_kana,  :string,  null: false
    add_column :users, :birth_year,       :integer
    add_column :users, :birth_month,      :integer
    add_column :users, :birth_day,        :integer
    add_column :users, :phone_number,     :integer
    add_column :users, :nickname,         :string,  null: false
    add_column :users, :avatar,           :string
    add_column :users, :introduction,     :text
  end
end
