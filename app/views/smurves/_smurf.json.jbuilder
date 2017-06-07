json.extract! smurf, :id, :startdate, :status, :ip, :firstname, :lastname, :login, :password, :cardtype, :creditcardnumber, :email, :paypalemail, :notes, :created_at, :updated_at
json.url smurf_url(smurf, format: :json)
