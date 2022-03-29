class CreatePallindromes < ActiveRecord::Migration[6.1]
  def change
    create_table :pallindromes do |t|
      t.integer :input
      t.string :values

      t.timestamps
    end
  end
end
