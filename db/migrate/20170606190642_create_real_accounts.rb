class CreateRealAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :real_accounts do |t|
      t.date :startdate
      t.string :ip
      t.string :firstname
      t.string :lastname
      t.string :fb_email
      t.string :fb_pw
      t.string :fb_profile_link
      t.string :paypal_email
      t.string :referrer_paypal
      t.integer :phone
      t.date :disbursement_date
      t.decimal :disbursement_amount
      t.string :skype_username
      t.text :notes

      t.timestamps
    end
  end
end
