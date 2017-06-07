json.extract! real_account, :id, :startdate, :ip, :firstname, :lastname, :fb_email, :fb_pw, :fb_profile_link, :paypal_email, :referrer_paypal, :phone, :disbursement_date, :disbursement_amount, :skype_username, :notes, :created_at, :updated_at
json.url real_account_url(real_account, format: :json)
