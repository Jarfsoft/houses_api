class CreateUserDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :user_devices do |t|
      t.integer :user_ID
      t.integer :device_ID

      t.timestamps
    end
  end
end
