class AddDefaultValueToStatusInUsers < ActiveRecord::Migration
  def change
    change_column :users, :status, :boolean, default: true
  end
end
