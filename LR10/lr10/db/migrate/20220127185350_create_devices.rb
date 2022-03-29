class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :price
      t.string :os
      t.string :dimensity
      t.string :resolution
      t.string :cpu_vendor
      t.string :cpu_model
      t.string :frequency
      t.string :ram_type
      t.string :ram_volume
      t.string :rom_type
      t.string :rom_volume
      t.string :graphics
      t.string :color

      t.timestamps
    end
  end
end
