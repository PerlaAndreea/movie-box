class CreateDummyUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :dummy_users do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
