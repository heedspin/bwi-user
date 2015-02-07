class CreateBwiAuthSessions < ActiveRecord::Migration
  def change
    create_table :bwi_auth_sessions do |t|
      t.references :user
      t.string :client_ip_address
      t.integer :expiry
      t.integer :request_count
      t.string :token
      t.integer :status_id
      t.timestamps
    end
    add_index :bwi_auth_sessions, :token
  end
end
