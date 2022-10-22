class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :role
      t.string :cell_phone
      t.boolean :client
      t.decimal :billingrate

      t.timestamps
    end
  end
end
