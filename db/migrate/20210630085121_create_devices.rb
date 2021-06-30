class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.float :price

      t.timestamps
    end
  end
end
