class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.string :pseudo
      t.date :date
      t.decimal :latitude
      t.decimal :longitude
      t.text :message

      t.timestamps
    end
  end
end
