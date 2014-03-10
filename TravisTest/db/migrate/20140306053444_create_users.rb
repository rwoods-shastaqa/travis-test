class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :username
      t.string :birthdate
      t.boolean :user_valid

      t.timestamps
    end
  end
end
