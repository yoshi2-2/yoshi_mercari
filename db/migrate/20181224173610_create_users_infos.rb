class CreateUsersInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :users_infos do |t|
      t.string    :family_name, null: false
      t.string    :first_name, null: false
      t.string    :family_name_kana, null: false
      t.string    :first_name_kana, null: false
      t.integer   :birth_year
      t.integer   :birth_month
      t.integer   :birth_day
      t.integer   :phone_number
      t.string    :avatar
      t.text      :introduction
      t.timestamps
    end
  end
end
