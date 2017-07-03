class AddUser < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.column :email, :string
      t.column :password_has, :string
      t.column :password_salt, :string
    end
  end
end
