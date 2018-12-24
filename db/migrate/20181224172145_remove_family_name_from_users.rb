class RemoveFamilyNameFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :family_name, :string
    remove_column :users, :first_name, :string
    remove_column :users, :family_name_kana, :string
    remove_column :users, :first_name_kana, :string
    remove_column :users, :birth_year, :integer
    remove_column :users, :birth_month, :integer
    remove_column :users, :birth_day, :integer
    remove_column :users, :phone_number, :integer
    remove_column :users, :avatar, :string
    remove_column :users, :introduction, :text
  end
end
