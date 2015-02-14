class CreateUserActivities < ActiveRecord::Migration
  def change
    create_table :user_activities, :force => true do |t|
      t.references :user
      t.references :bwi_auth_session
      t.references :user_session
      t.string     :remote_ip
      t.string     :controller
      t.string     :action
      t.string     :format
      t.text       :params
      t.decimal    :elapsed_time, precision: 10, scale: 2
      t.timestamp  :created_at
    end
  end
end
