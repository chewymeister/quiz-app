class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_hash
      t.string :password_confirmation
      t.string :email
    end
  end
end
