class AddAuthenticateTimeoutableToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :last_access_at, :datetime, default: nil
  end
end
