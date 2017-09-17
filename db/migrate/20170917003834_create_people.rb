class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :person_id
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
