class CreatePartnars < ActiveRecord::Migration[5.0]
  def change
    create_table :partnars do |t|
      t.integer :pid
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
