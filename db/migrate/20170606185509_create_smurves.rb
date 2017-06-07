class CreateSmurves < ActiveRecord::Migration[5.1]
  def change
    create_table :smurves do |t|
      t.date :startdate
      t.string :status
      t.string :ip
      t.string :firstname
      t.string :lastname
      t.string :login
      t.string :password
      t.string :cardtype
      t.string :creditcardnumber
      t.string :email
      t.string :paypalemail
      t.text :notes

      t.timestamps
    end
  end
end
