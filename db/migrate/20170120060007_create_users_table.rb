class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :bio
      t.text :avatar
      t.timestamps null: false
    end
  end
end
