class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest
      t.boolean :remember_me, default: false
      t.text :note
      t.datetime :born_at
      t.string :invitation_token


      t.timestamps
    end
  end
end
