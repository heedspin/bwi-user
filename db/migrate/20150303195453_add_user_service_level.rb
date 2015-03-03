class AddUserServiceLevel < ActiveRecord::Migration
  def change
    add_column :users, :service_level_id, :integer
  end
end
